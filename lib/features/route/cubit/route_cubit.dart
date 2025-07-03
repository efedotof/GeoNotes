import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/reverse_geocoding_model/reverse_geocoding_model.dart';
import 'package:geo_notes/map_repository/routing/routing_interface.dart';

part 'route_state.dart';
part 'route_cubit.freezed.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit({required RoutingInterface routingInterface})
      : _routingInterface = routingInterface,
        super(const RouteState.initial());

  final RoutingInterface _routingInterface;

  Future<void> fetchAddressFromCoordinates(double lat, double lon) async {
    emit(const RouteState.loading());
    try {
      final address = await _routingInterface.getAddressFromCoordinates(
        latitude: lat,
        longitude: lon,
      );
      emit(RouteState.loaded(address: address));
    } catch (e) {
      emit(RouteState.error("Ошибка: ${e.toString()}"));
    }
  }
}
