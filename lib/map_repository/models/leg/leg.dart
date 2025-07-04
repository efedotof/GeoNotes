import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/step/step_model.dart';
import 'package:hive_ce/hive.dart';

part "leg.freezed.dart";
part "leg.g.dart";

@freezed
@HiveType(typeId: 11)
abstract class Leg with _$Leg {
  const factory Leg({
    @HiveField(0) required List<StepModel> steps,
    @HiveField(1) required double weight,
    @HiveField(2) required double duration,
    @HiveField(3) required double distance,
    @HiveField(4) String? summary,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}
