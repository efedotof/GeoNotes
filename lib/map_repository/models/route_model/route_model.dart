import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/route/route.dart';
import 'package:geo_notes/map_repository/models/waypoint/waypoint.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
abstract class RouteModel with _$RouteModel {
  const factory RouteModel({
    required String code,
    required List<Route> routes,
    required List<Waypoint> waypoints,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}
