import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/view/create_marker/cubit/create_marker_cubit.dart';

class CreateMarkerView extends StatelessWidget {
  const CreateMarkerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateMarkerCubit, CreateMarkerState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }
        if (state.success) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        final cubit = context.read<CreateMarkerCubit>();

        return Scaffold(
          appBar: AppBar(
            title: const Text("Создать заметку"),
            actions: [
              IconButton(
                icon: const Icon(Icons.check),
                onPressed: () => context
                    .read<CreateMarkerCubit>()
                    .saveNote(context: context),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  onChanged: cubit.setTitle,
                  decoration: const InputDecoration(
                    labelText: "Название",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  onChanged: cubit.setDescription,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: "Описание",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Фотографии',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: cubit.addImages,
                      icon: const Icon(Icons.photo_library),
                      label: const Text("Добавить"),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                if (state.images.isNotEmpty)
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: state.images.asMap().entries.map((entry) {
                      final i = entry.key;
                      final file = entry.value;
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              file,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 4,
                            right: 4,
                            child: GestureDetector(
                              onTap: () => cubit.removeImage(i),
                              child: const CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.black54,
                                child: Icon(Icons.close, size: 16),
                              ),
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomMarker extends StatelessWidget {
  final File? image;
  const CustomMarker({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Изображение сверху
        if (image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(
              image!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          )
        else
          const Icon(Icons.image_not_supported, size: 50, color: Colors.grey),

        // Иконка местоположения
        const Icon(
          Icons.location_on,
          color: Colors.purple,
          size: 40,
        ),
      ],
    );
  }
}
