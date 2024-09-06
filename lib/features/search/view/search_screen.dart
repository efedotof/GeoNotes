import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,  // Начальный размер
      minChildSize: 0.1,      // Минимальный размер
      maxChildSize: 0.8,      // Максимальный размер
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
              Center(child: Text('Searche')),
              // Другие виджеты здесь
            ],
          ),
        );
      },
    );
  }
}
