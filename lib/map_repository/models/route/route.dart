import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/leg/leg.dart';

part "route.freezed.dart";
part "route.g.dart";

@freezed
abstract class Route with _$Route {
  const factory Route({
    required List<Leg> legs,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'weight_name') required String weightName,
    required double weight,
    required double duration,
    required double distance,
    String? summary,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
