import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geo_notes/route/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  void nextPage(BuildContext context,TabsRouter tabs) async{
      int activeIndexs = tabs.activeIndex;
      switch (activeIndexs) {
        case 0:
          tabs.setActiveIndex(activeIndexs + 1);
        case 1:
          tabs.setActiveIndex(activeIndexs + 1);
        case 2:
          context.replaceRoute(const MainHomeRoute());
          _setDataFromStorage();
          break;
      }
  }

   void _setDataFromStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_isSave', true);
  }

}
