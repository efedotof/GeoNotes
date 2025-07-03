import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'search_field_input.dart';
import 'search_results_list.dart';

class SearchDraggableSheet extends StatelessWidget {
  const SearchDraggableSheet({super.key, required this.isRouting});

  final bool isRouting;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Поиск мест",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (isRouting)
                    TextButton(
                      onPressed: () {
                        AutoRouter.of(context).popUntilRoot();
                      },
                      child: const Text(
                        'Отмена',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              const SearchFieldInput(),
              const SizedBox(height: 12),
              const SearchResultsList(),
            ],
          ),
        );
      },
    );
  }
}
