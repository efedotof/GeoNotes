import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,  // Начальный размер экрана (30% высоты)
      minChildSize: 0.1,      // Минимальный размер экрана (10% высоты)
      maxChildSize: 0.8,      // Максимальный размер экрана (80% высоты)
      builder: (BuildContext context, ScrollController scrollController) {
        return GestureDetector(
          onTap: () {
            // Закрыть все страницы и вернуться к корневой
            AutoRouter.of(context).popUntilRoot();
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                topLeft: Radius.circular(14),
              ),
              color: Color(0xFFF7F6F2),
            ),
            child: ListView(
              controller: scrollController,
              children: const [
                Center(
                  child: Text('Saved'),
                ),
                // Добавьте другие виджеты по необходимости
              ],
            ),
          ),
        );
      },
    );
  }
}
