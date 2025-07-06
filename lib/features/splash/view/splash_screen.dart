import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/splash/cubit/splash_cubit.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashCubit>().load(context: context);
    context.read<MapCubit>().initializeMap();
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text(
              "GeoNotes",
              style: TextStyle(fontSize: 30),
            ),
          ),
          // backgroundColor: Color(0xFF102930),
        );
      },
    );
  }
}
