part of 'route_cubit.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState.initial() = _Initial;
  const factory RouteState.loading() = _Loading;
  const factory RouteState.loaded({required ReverseGeocodingModel address}) =
      _Loaded;
  const factory RouteState.error(String message) = _Error;
}
