import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return  const Scaffold(
      body: Center(
        child: Text('page 2'),
      ),
    );
  }
}