import 'package:freezed_annotation/freezed_annotation.dart';

part "waypoint.freezed.dart";
part "waypoint.g.dart";

@freezed
abstract class Waypoint with _$Waypoint {
  const factory Waypoint({
    required String hint,
    required List<double> location,
    required String name,
    required double distance,
  }) = _Waypoint;

  factory Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);
}
