import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geo_notes/features/map/view/create_marker/widget/widget.dart';

@RoutePage()
class CreateMarkerScreen extends StatelessWidget {
  const CreateMarkerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateMarkerView();
  }
}
