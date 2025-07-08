import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/map/map_interface.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:latlong2/latlong.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit({required this.mapInterface}) : super(const MapState.initial()) {
    initializeMap();
  }

  final MapInterface mapInterface;
  Timer? _locationUpdateTimer;

  final List<CityModel> cities = [
    CityModel(name: 'New York', idx: 40.7128, idy: -74.0060),
    CityModel(name: 'London', idx: 51.5074, idy: -0.1278),
    CityModel(name: 'Tokyo', idx: 35.6895, idy: 139.6917),
  ];

  Future<void> initializeMap() async {
    emit(const MapState.mapLoading());
    final result = await mapInterface.initializeMap();
    if (result.location != null && result.cityModel != null) {
      emit(MapState.mapLocationUpdated(
        location: result.location!,
        cityName: result.cityModel!.name,
      ));
      _startAutoUpdate();
    } else {
      emit(const MapState.mapPermissionDenied());
    }
  }

  Future<void> updateCurrentLocation() async {
    final result = await mapInterface.updateCurrentLocation();
    if (result.location != null && result.cityModel != null) {
      emit(MapState.mapLocationUpdated(
        location: result.location!,
        cityName: result.cityModel!.name,
      ));
    } else {
      emit(const MapState.mapPermissionDenied());
    }
  }

  Future<void> moveToCity({required CityModel city}) async {
    final result = await mapInterface.moveToCity(city: city);
    if (result.location != null && result.cityModel != null) {
      emit(MapState.mapLocationUpdated(
          location: result.location!, cityName: result.cityModel!.name));
    }
  }

  Future<void> addMarkerAtLocation({
    required LatLng location,
    required String cityName,
  }) async {
    await mapInterface.addMarkerAtLocation(
        location: location, cityName: cityName);
    emit(MapState.mapMarkerAdded(markerLocation: location, cityName: cityName));
  }

  void _startAutoUpdate(
      {Duration interval = const Duration(milliseconds: 500)}) {
    _locationUpdateTimer?.cancel();
    _locationUpdateTimer = Timer.periodic(interval, (_) {
      updateCurrentLocation();
    });
  }

  void stopAutoUpdate() {
    _locationUpdateTimer?.cancel();
    _locationUpdateTimer = null;
  }

  @override
  Future<void> close() {
    stopAutoUpdate();
    return super.close();
  }
}
