import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_compass/flutter_compass.dart';

part 'marker_state.dart';

class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit() : super(MarkerInitial()) {
    _listenToCompass();
  }

  void _listenToCompass() {
    FlutterCompass.events?.listen((event) {
      emit(MarkerRotationUpdated(event.heading ?? 0));
    });
  }
}