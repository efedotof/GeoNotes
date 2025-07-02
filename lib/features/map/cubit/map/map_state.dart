part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.mapLocationUpdated(
      {required LatLng location,
      required String cityName}) = _MapLocationUpdated;
  const factory MapState.mapMarkerAdded(
      {required LatLng location, required String cityName}) = _MapMarkerAdded;
  const factory MapState.mapLoading() = _MapLoading;
  const factory MapState.mapPermissionDenied() = _MapPermissionDenied;
}
