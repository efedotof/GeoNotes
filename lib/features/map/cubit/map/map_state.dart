part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.mapLoading() = _MapLoading;
  const factory MapState.mapPermissionDenied() = _MapPermissionDenied;
  const factory MapState.mapLocationUpdated({
    required LatLng location,
    required String cityName,
  }) = _MapLocationUpdated;
  const factory MapState.mapMarkerAdded({
    required LatLng location,
    required String cityName,
  }) = _MapMarkerAdded;
}
