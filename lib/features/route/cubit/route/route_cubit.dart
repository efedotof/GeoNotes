import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';
import 'package:geo_notes/map_repository/routing/routing_interface.dart';
import 'package:latlong2/latlong.dart';

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

  void localRoute({required BuildContext context, required RouteModel model}) {
    final location =
        LatLng(model.location!.latitude, model.location!.longitude);
    context.read<MapCubit>().addMarkerAtLocation(
        location: location, cityName: model.location!.displayName);
    context.read<SearcheCubit>().onTapSearcheResult(
          context: context,
          location: model.location!,
          isLocal: true,
        );
    emit(RouteState.loaded(route: model));
  }

  void clean() {
    emit(RouteState.initial());
  }

  List<LatLng>? convertRouteToPoints(RouteModel route) {
    if (route.routes.isEmpty || route.routes.first.legs.isEmpty) return null;

    final steps = route.routes.first.legs.first.steps;
    return steps
        .map((step) =>
            LatLng(step.maneuver.location[1], step.maneuver.location[0]))
        .toList();
  }
}
