import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/widgets.dart';

import '../widget/model/city_model.dart';
import 'package:geocoding/geocoding.dart';
part 'map_state.dart';


class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitial());

  final List<CityModel> cities = [
    CityModel(name: 'New York', idx: 40.7128, idy: -74.0060),
    CityModel(name: 'London', idx: 51.5074, idy: -0.1278),
    CityModel(name: 'Tokyo', idx: 35.6895, idy: 139.6917),
  ];

  Future<void> initializeMap(MapController mapController) async {
    if (state is MapLocationUpdated) return;
    await _getCurrentLocation(mapController);
  }

  Future<void> _getCurrentLocation(MapController mapController) async {
  try {
    emit(MapLoading());
    final status = await Permission.location.request();
    if (status.isGranted) {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      final location = LatLng(position.latitude, position.longitude);
      final cityName = await _getCityNameFromCoordinates(position.latitude, position.longitude);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        mapController.move(location, 17);
      });

      emit(MapLocationUpdated(location: location, cityName: cityName));
    } else {
      emit(MapPermissionDenied());
    }
  } catch (e) {
    log('Error: $e');
  }
}

  Future<void> updateCurrentLocation(MapController mapController) async {
  try {
    emit(MapLoading());
    final status = await Permission.location.request();
    if (status.isGranted) {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      final location = LatLng(position.latitude, position.longitude);
      final cityName = await _getCityNameFromCoordinates(position.latitude, position.longitude);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        mapController.move(location, 17);
      });

      emit(MapLocationUpdated(location: location, cityName: cityName));
    } else {
      emit(MapPermissionDenied());
    }
  } catch (e) {
    log('Error: $e');
  }
}


  Future<String> _getCityNameFromCoordinates(
      double latitude, double longitude) async {
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        return placemarks.first.locality ?? 'Unknown City';
      } else {
        return 'Unknown City';
      }
    } catch (e) {
      log('Error in geocoding: $e');
      return 'Unknown City';
    }
  }

  void moveToCity(CityModel city, MapController mapController) {
    final location = LatLng(city.idx, city.idy);
    mapController.move(location, 17);
    emit(MapLocationUpdated(location: location, cityName: city.name));
  }
}
