import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/splash/cubit/splash_cubit.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashCubit>().load(context: context);
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text(
              "GeoNotes",
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
      },
    );
  }
}
