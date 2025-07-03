import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../widget/widget.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, this.isRouting});

  final bool? isRouting;

  @override
  Widget build(BuildContext context) {
    return SearchDraggableSheet(
      isRouting: isRouting != null ? isRouting! : false,
    );
  }
}
