import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/map/map_interface.dart';
import 'package:latlong2/latlong.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit({required this.mapInterface}) : super(const MapState.initial());

  final MapInterface mapInterface;

  Future<void> addMarkerAtLocation({
    required LatLng location,
    required String cityName,
  }) async {
    await mapInterface.addMarkerAtLocation(
        location: location, cityName: cityName);
    emit(MapState.mapMarkerAdded(markerLocation: location, cityName: cityName));
  }

  void clean() {
    emit(MapState.initial());
  }
}
