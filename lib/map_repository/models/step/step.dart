import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/intersection/intersection.dart';
import 'package:geo_notes/map_repository/models/maneuver/maneuver.dart';

part "step.freezed.dart";
part "step.g.dart";

@freezed
abstract class Step with _$Step {
  const factory Step({
    required List<Intersection> intersections,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'driving_side') required String drivingSide,
    required String geometry,
    required Maneuver maneuver,
    required String name,
    required String mode,
    required double weight,
    required double duration,
    required double distance,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}
