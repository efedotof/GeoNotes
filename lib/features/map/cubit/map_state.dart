part of 'map_cubit.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object?> get props => [];
}

class MapInitial extends MapState {}

class MapLocationUpdated extends MapState {
  final LatLng location;

  const MapLocationUpdated({required this.location});

  @override
  List<Object?> get props => [location];
}

class MapLoading extends MapState {}
