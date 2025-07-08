part of 'map_cubit.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.mapLoading() = _MapLoading;
  const factory MapState.mapMarkerAdded({
    required LatLng markerLocation,
    required String cityName,
  }) = _MapMarkerAdded;
}
