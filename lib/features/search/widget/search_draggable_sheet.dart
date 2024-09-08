import 'package:flutter/material.dart';

import 'search_Input_field.dart';
import 'search_results_list.dart';

class SearchDraggableSheet extends StatelessWidget {
  const SearchDraggableSheet({super.key});

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
              topRight: Radius.circular(14),
              topLeft: Radius.circular(14),
            ),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            children: const [
              SearchInputField(),
              SearchResultsList(),
            ],
          ),
        );
      },
    );
  }
}
