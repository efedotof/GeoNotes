import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';
import 'package:geo_notes/map_repository/routing/routing_interface.dart';

part 'route_cubit.freezed.dart';
part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit({required RoutingInterface routingInterface})
      : _routingInterface = routingInterface,
        super(const RouteState.initial());

  final RoutingInterface _routingInterface;

  Future<void> fetchRoute(
      {required double startLat,
      required double startLon,
      required double endLat,
      required double endLon,
      required String type}) async {
    emit(const RouteState.loading());
    try {
      final route = await _routingInterface.getRoute(
        startLat: startLat,
        startLon: startLon,
        endLat: endLat,
        endLon: endLon,
        type: type,
      );
      emit(RouteState.loaded(route: route));
    } catch (e) {
      emit(RouteState.error("Failed to fetch route: ${e.toString()}"));
    }
  }
}
