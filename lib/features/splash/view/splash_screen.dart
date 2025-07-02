import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geo_notes/features/splash/cubit/splash_cubit.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    // return BlocProvider(
    //   create: (context) => SplashCubit()..load(context),
    //   child: BlocBuilder<SplashCubit, SplashState>(
    //     builder: (context, state) {
    //       return const Scaffold(
    //         backgroundColor: Color(0xFF102930),
    //       );
    //     },
    //   ),
    // );
  }
}
