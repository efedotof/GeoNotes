import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/intersection/intersection.dart';
import 'package:geo_notes/map_repository/models/maneuver/maneuver.dart';
import 'package:hive_ce/hive.dart';

part "step_model.freezed.dart";
part "step_model.g.dart";

@freezed
@HiveType(typeId: 10)
abstract class StepModel with _$StepModel {
  const factory StepModel({
    @HiveField(0) required List<Intersection> intersections,
    @HiveField(1) @JsonKey(name: 'driving_side') required String drivingSide,
    @HiveField(2) required String geometry,
    @HiveField(3) required Maneuver maneuver,
    @HiveField(4) required String name,
    @HiveField(5) required String mode,
    @HiveField(6) required double weight,
    @HiveField(7) required double duration,
    @HiveField(8) required double distance,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);
}
