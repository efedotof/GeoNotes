import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,  // Начальный размер (30% экрана)
      minChildSize: 0.1,      // Минимальный размер (10% экрана)
      maxChildSize: 0.8,      // Максимальный размер (80% экрана)
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14), 
              topLeft: Radius.circular(14)
            ),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            children: const [
              Center(child: Text('Setting')),
              // Добавьте сюда любые дополнительные виджеты для экрана настроек
            ],
          ),
        );
      },
    );
  }
}