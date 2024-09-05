import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(14), topLeft: Radius.circular(14)),
          color: Color(0xFFF7F6F2)),
      child: const Center(
        child: Text('Saved'),
      ),
    );
  }
}
