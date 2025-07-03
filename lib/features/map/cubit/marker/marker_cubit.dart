import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/marker/marker_interface.dart';

part 'marker_state.dart';
part 'marker_cubit.freezed.dart';

class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit({required MarkerInterface markerInterface})
      : _markerInterface = markerInterface,
        super(MarkerState.initial()) {
    _listenToCompass();
  }

  final MarkerInterface _markerInterface;
  double _currentHeading = 0;
  double _targetHeading = 0;
  Timer? _rotationTimer;
  StreamSubscription<double>? _compassSubscription;

  void _listenToCompass() {
    _compassSubscription =
        _markerInterface.compassHeadingStream.listen((heading) {
      _targetHeading = heading;
      _startRotation();
    });
  }

  void _startRotation() {
    _rotationTimer?.cancel();
    _rotationTimer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      final step = _markerInterface.calculateRotationStep(
        currentHeading: _currentHeading,
        targetHeading: _targetHeading,
      );

      if (step == 0) {
        _currentHeading = _targetHeading;
        emit(MarkerState.markerRotationUpdated(_currentHeading));
        timer.cancel();
      } else {
        _currentHeading += step;
        emit(MarkerState.markerRotationUpdated(_currentHeading));
      }
    });
  }

  @override
  Future<void> close() {
    _compassSubscription?.cancel();
    _rotationTimer?.cancel();
    return super.close();
  }
}
