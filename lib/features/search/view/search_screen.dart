import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../widget/widget.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchDraggableSheet();
  }
}
