import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/route/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.initial());

  void load({required BuildContext context}) async {
    bool isOnboarding = await _getOnboardingGet();

    isOnboarding
        ? Timer(const Duration(seconds: 2),
            () => context.replaceRoute(const MainHomeRoute()))
        : Timer(const Duration(seconds: 2),
            () => context.replaceRoute(const OnboardingRoute()));
  }

  Future<bool> _getOnboardingGet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarding_isSave') ?? false;
  }
}
