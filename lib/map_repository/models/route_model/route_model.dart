import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/route/route_dop.dart';
import 'package:geo_notes/map_repository/models/waypoint/waypoint.dart';
import 'package:hive_ce/hive.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class RouteModel with _$RouteModel {
  const factory RouteModel(
      {@HiveField(0) required String code,
      @HiveField(1) required List<RouteDop> routes,
      @HiveField(2) required List<Waypoint> waypoints,
      @HiveField(3) required String? displayName}) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}
