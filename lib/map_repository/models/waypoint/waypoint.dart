import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part "waypoint.freezed.dart";
part "waypoint.g.dart";

@freezed
@HiveType(typeId: 12)
abstract class Waypoint with _$Waypoint {
  const factory Waypoint({
    @HiveField(0) required String hint,
    @HiveField(1) required List<double> location,
    @HiveField(2) required String name,
    @HiveField(3) required double distance,
  }) = _Waypoint;

  factory Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);
}
