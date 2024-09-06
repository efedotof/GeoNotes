<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,  // Начальный размер экрана (30%)
      minChildSize: 0.1,      // Минимальный размер экрана (10%)
      maxChildSize: 0.8,      // Максимальный размер экрана (80%)
      builder: (BuildContext context, ScrollController scrollController) {
        return GestureDetector(
          onTap: () {
            // Закрываем все предыдущие страницы и возвращаемся к корневой
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
                Center(child: Text('Route')),
                // Добавьте другие виджеты по необходимости
              ],
            ),
          ),
        );
      },
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,  // Начальный размер экрана (30%)
      minChildSize: 0.1,      // Минимальный размер экрана (10%)
      maxChildSize: 0.8,      // Максимальный размер экрана (80%)
      builder: (BuildContext context, ScrollController scrollController) {
        return GestureDetector(
          onTap: () {
            // Закрываем все предыдущие страницы и возвращаемся к корневой
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
                Center(child: Text('Route')),
                // Добавьте другие виджеты по необходимости
              ],
            ),
          ),
        );
      },
    );
  }
}
>>>>>>> 2b05aa3260d4acb858d542f827af24c877766ba5
