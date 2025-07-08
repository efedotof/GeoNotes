import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/map/map_interface.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:latlong2/latlong.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  final MapInterface _mapInterface;
  StreamSubscription<LatLng>? _locationSubscription;

  LocationCubit({required MapInterface mapInterface})
      : _mapInterface = mapInterface,
        super(const LocationState.initial());

  Future<void> fetchCurrentLocation() async {
    emit(const LocationState.loading());

    final result = await _mapInterface.updateCurrentLocation();

    if (result.location != null && result.cityModel != null) {
      emit(LocationState.loaded(
        location: result.location!,
        cityName: result.cityModel!.name,
      ));
      startLocationTracking();
    } else {
      stopLocationTracking();
      emit(const LocationState.permissionDenied());
    }
  }

  Future<void> moveToCity(CityModel city) async {
    emit(const LocationState.loading());

    final result = await _mapInterface.moveToCity(city: city);

    if (result.location != null && result.cityModel != null) {
      emit(LocationState.loaded(
        location: result.location!,
        cityName: result.cityModel!.name,
      ));
    } else {
      emit(const LocationState.permissionDenied());
    }
  }

  Future<void> startLocationTracking() async {
    await _locationSubscription?.cancel();

    _locationSubscription =
        _mapInterface.getLocationStream().listen((position) async {
      final result = await _mapInterface.getCityFromLocation(position);

      if (result != null) {
        emit(LocationState.loaded(
          location: position,
          cityName: result.name,
        ));
      }
    });
  }

  Future<void> stopLocationTracking() async {
    await _locationSubscription?.cancel();
    _locationSubscription = null;
  }

  @override
  Future<void> close() {
    stopLocationTracking();
    return super.close();
  }
}
