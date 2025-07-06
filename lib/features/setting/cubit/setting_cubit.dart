import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/store/repository/store_interface.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> {
  final StoreInterface _storeInterface;

  SettingCubit({required StoreInterface storeInterface})
      : _storeInterface = storeInterface,
        super(SettingState.initial());

  Future<void> showDeleateModal({required BuildContext context}) async {
    final List<Map<String, String>> items = [
      {
        "title": "Список заметок",
        "description": "Все заметки, созданные пользователем.",
      },
      {
        "title": "Список маршрутов",
        "description": "Сохранённые маршруты передвижения.",
      },
      {
        "title": "Список истории",
        "description": "История действий и просмотренных элементов.",
      },
    ];

    List<bool> selected = List.generate(items.length, (_) => false);

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: const Text("Выберите элементы для удаления"),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    items.length,
                    (i) => ListTile(
                      title: Text(items[i]['title']!),
                      subtitle: Text(items[i]['description']!),
                      trailing: Checkbox(
                        value: selected[i],
                        onChanged: (value) {
                          setState(() {
                            selected[i] = value ?? false;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Отмена"),
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint("Выбрано для удаления:");

                    for (int i = 0; i < items.length; i++) {
                      if (selected[i]) {
                        final title = items[i]['title']!;
                        debugPrint("- $title");

                        switch (title) {
                          case "Список заметок":
                            _storeInterface.clearListBox();
                            break;
                          case "Список маршрутов":
                            _storeInterface.clearRouteModel();
                            break;
                          case "Список истории":
                            _storeInterface.clearLocationModel();
                            break;
                        }
                      }
                    }

                    Navigator.of(context).pop();
                  },
                  child: const Text("Удалить"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
