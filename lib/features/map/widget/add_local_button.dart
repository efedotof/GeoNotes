import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geo_notes/route/app_route.dart';

class AddLocalButton extends StatelessWidget {
  const AddLocalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      right: 10,
      child: GestureDetector(
        onTap: () => context.pushRoute(CreateMarkerRoute()),
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xFFF2ECEC),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
