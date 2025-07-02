import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/theme/repositories/theme_interface.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required ThemeInterface themeInterface})
      : _themeInterface = themeInterface,
        super(ThemeState(brightness: Brightness.light)) {
    _initializeTheme();
  }

  final ThemeInterface _themeInterface;

  Future<void> setThemeBrightness(Brightness brightness) async {
    try {
      emit(ThemeState(brightness: brightness));
      await _themeInterface.setDarkThemeSelected(brightness == Brightness.dark);
    } catch (e) {
      debugPrint('Error setting theme: \$e');
    }
  }

  void _initializeTheme() {
    try {
      final isDark = _themeInterface.isDarkTheme();
      final brightness = isDark ? Brightness.dark : Brightness.light;
      emit(ThemeState(brightness: brightness));
    } catch (e) {
      debugPrint('Error initializing theme: \$e');
    }
  }
}
