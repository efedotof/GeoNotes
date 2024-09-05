import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:latlong2/latlong.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitial()) {
    _getCurrentLocation();
  }

  MapController mapController = MapController();

  LatLng currentLocation = const LatLng(0, 0); // Начальные координаты
  double idx = 0;

  double idy = 0;

  Future<void> _getCurrentLocation() async {
    try {
      final status = await Permission.location.request();
      Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        forceAndroidLocationManager: true, // Для Android
      ).then((Position position) {
        currentLocation = LatLng(position.latitude, position.longitude);
        idx = position.latitude;
        idy = position.longitude;

        mapController.move(currentLocation, 17);
      });
    } catch (e) {
      log('Error: $e');
    }
  }
}
