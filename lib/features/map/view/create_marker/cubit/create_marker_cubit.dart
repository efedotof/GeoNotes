import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/store/list_box/list_box.dart';
import 'package:geo_notes/store/repository/store_interface.dart';
import 'package:image_picker/image_picker.dart';

part 'create_marker_state.dart';
part 'create_marker_cubit.freezed.dart';

class CreateMarkerCubit extends Cubit<CreateMarkerState> {
  final ImagePicker _picker = ImagePicker();
  final StoreInterface storeInterface;
  CreateMarkerCubit({required this.storeInterface})
      : super(CreateMarkerState.initial());

  void setTitle(String value) {
    emit(state.copyWith(title: value));
  }

  void setDescription(String value) {
    emit(state.copyWith(description: value));
  }

  Future<void> addImages() async {
    try {
      final List<XFile> picked = await _picker.pickMultiImage(limit: 20);

      if (picked.isNotEmpty) {
        final files = picked.map((x) => File(x.path)).toList();
        emit(state.copyWith(images: [...state.images, ...files]));
      }
    } catch (e) {
      debugPrint("Ошибка при выборе изображений: $e");
    }
  }

  void removeImage(int index) {
    final updated = [...state.images]..removeAt(index);
    emit(state.copyWith(images: updated));
  }

  Future<void> saveNote({required BuildContext context}) async {
    if (state.title.trim().isEmpty) {
      emit(state.copyWith(errorMessage: 'Введите название'));
      return;
    }
    final location = context.read<MapCubit>().mapInterface.location;

    if (location == null) return;

    final imageBytes = <Uint8List>[];
    for (final file in state.images) {
      final bytes = await file.readAsBytes();
      imageBytes.add(bytes);
    }
    final marker = ListBox(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      latitude: location.latitude,
      longitude: location.longitude,
      displayName: state.title,
      description: state.description,
      images: imageBytes,
    );
    storeInterface.addListBox(item: marker);
    emit(state.copyWith(success: true));
  }

  Future<void> showSavedNoteDialog({
    required BuildContext context,
    required ListBox marker,
    required VoidCallback onDelete,
  }) async {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        marker.displayName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        Navigator.of(context).pop();
                        onDelete();
                      },
                      tooltip: 'Удалить',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (marker.description.isNotEmpty)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            marker.description,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      if (marker.description.isNotEmpty)
                        const SizedBox(height: 16),
                      if (marker.images.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Фотографии:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: marker.images.map((img) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.memory(
                                      img,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      if (marker.images.isEmpty && marker.description.isEmpty)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Нет дополнительной информации",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey[700],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Закрыть'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
