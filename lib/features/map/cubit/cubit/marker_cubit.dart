import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_compass/flutter_compass.dart';

part 'marker_state.dart';

class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit() : super(MarkerInitial()) {
    _listenToCompass();
  }

  double _currentHeading = 0;
  double _targetHeading = 0;
  Timer? _rotationTimer;

  void _listenToCompass() {
    FlutterCompass.events?.listen((event) {
      if (event.heading != null) {
        _targetHeading = event.heading!;
        _startRotation();
      }
    });
  }

  void _startRotation() {
    _rotationTimer?.cancel();
    _rotationTimer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      final delta = (_targetHeading - _currentHeading).abs();
      if (delta < 1) {
        _currentHeading = _targetHeading;
        emit(MarkerRotationUpdated(_currentHeading));
        timer.cancel();
      } else {
        final step = delta / 10; 
        _currentHeading += (step * (_targetHeading > _currentHeading ? 1 : -1));
        emit(MarkerRotationUpdated(_currentHeading));
      }
    });
  }
}
