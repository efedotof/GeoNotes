part of 'marker_cubit.dart';

@freezed
class MarkerState with _$MarkerState {
  const factory MarkerState.initial() = _Initial;
  const factory MarkerState.markerRotationUpdated(double heading) =
      _MarkerRotationUpdated;
}
