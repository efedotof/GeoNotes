part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.loaded({
    required LatLng location,
    required String cityName,
  }) = _Loaded;
  const factory LocationState.permissionDenied() = _PermissionDenied;
}
