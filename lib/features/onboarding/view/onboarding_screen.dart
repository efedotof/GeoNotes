import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:geo_notes/route/app_route.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: AutoTabsRouter(
        routes: const [
          RouteOneRoute(),
          RouteTwoRoute(),
          RouteThreeRoute(),
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text('GeoNotes'),
            ),
            body: child,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Skip')),
                  GestureDetector(
                    onTap: () => context
                        .read<OnboardingCubit>()
                        .nextPage(context: context, tabs: tabsRouter),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF102930),
                          borderRadius: BorderRadius.circular(18)),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Next',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
