part of 'map_cubit.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object?> get props => [];
}

class MapInitial extends MapState {}

class MapLocationUpdated extends MapState {
  final LatLng location;
  final String cityName;

  const MapLocationUpdated({
    required this.location,
    required this.cityName,
  });
}

class MapLoading extends MapState {}
class MapPermissionDenied extends MapState {}
class MapMarkerAdded extends MapState {
  final LatLng location;
  final String cityName;

  const MapMarkerAdded({required this.location, required this.cityName});

  @override
  List<Object> get props => [location, cityName];
}