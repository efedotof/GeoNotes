part of 'marker_cubit.dart';

sealed class MarkerState extends Equatable {
  const MarkerState();

  @override
  List<Object> get props => [];
}

final class MarkerInitial extends MarkerState {}

final class MarkerRotationUpdated extends MarkerState {
  final double heading;

  const MarkerRotationUpdated(this.heading);

  @override
  List<Object> get props => [heading];
}