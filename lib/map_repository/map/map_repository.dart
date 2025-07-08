import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:geo_notes/map_repository/models/map_location_updated_model/map_location_updated_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';

import 'map_interface.dart';

class MapRepository implements MapInterface {
  final MapController _mapController = MapController();
  LatLng? _markerLocation;
  LatLng? _location;

  @override
  MapController get mapController => _mapController;

  @override
  LatLng? get markerLocation => _markerLocation;

  @override
  LatLng? get location => _location;

  @override
  Future<MapLocationUpdatedModel> initializeMap() async {
    return _getCurrentLocation();
  }

  Future<CityModel> _getCityModelFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);

      if (placemarks.isEmpty) {
        return CityModel(
          name: 'Unknown City',
          idx: latitude,
          idy: longitude,
        );
      }

      final placemark = placemarks.first;
      return CityModel(
        name: placemark.locality ??
            placemark.subAdministrativeArea ??
            'Unknown City',
        idx: latitude,
        idy: longitude,
      );
    } catch (e) {
      debugPrint('Geocoding error: $e');
      return CityModel(
        name: 'Unknown City',
        idx: latitude,
        idy: longitude,
      );
    }
  }

  Future<MapLocationUpdatedModel> _getCurrentLocation() async {
    try {
      final status = await Permission.location.request();
      if (!status.isGranted) {
        return MapLocationUpdatedModel(
          cityModel: null,
          location: null,
        );
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      final location = LatLng(position.latitude, position.longitude);
      _location = location;
      final cityModel = await _getCityModelFromCoordinates(
        latitude: position.latitude,
        longitude: position.longitude,
      );

      return MapLocationUpdatedModel(
        cityModel: cityModel,
        location: location,
      );
    } catch (e) {
      debugPrint("Location error: ${e.toString()}");
      return MapLocationUpdatedModel(
        cityModel: null,
        location: null,
      );
    }
  }

  @override
  Future<MapLocationUpdatedModel> updateCurrentLocation() async {
    return _getCurrentLocation();
  }

  @override
  Future<MapLocationUpdatedModel> moveToCity({required CityModel city}) async {
    final location = LatLng(city.idx, city.idy);
    _location = location;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _mapController.move(location, 17);
    });

    final cityModel = await _getCityModelFromCoordinates(
      latitude: city.idx,
      longitude: city.idy,
    );

    return MapLocationUpdatedModel(
      cityModel: cityModel,
      location: location,
    );
  }

  @override
  Future<void> addMarkerAtLocation({
    required LatLng location,
    required String cityName,
  }) async {
    _markerLocation = location;
    mapController.move(_markerLocation!, 17);
  }

  @override
  Stream<LatLng> getLocationStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 2,
      ),
    ).map((position) => LatLng(position.latitude, position.longitude));
  }

  @override
  Future<CityModel?> getCityFromLocation(LatLng location) async {
    final cityModel = await _getCityModelFromCoordinates(
      latitude: location.latitude,
      longitude: location.longitude,
    );
    return cityModel;
  }
}
