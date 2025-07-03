import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/step/step.dart';

part "leg.freezed.dart";
part "leg.g.dart";

@freezed
abstract class Leg with _$Leg {
  const factory Leg({
    required List<Step> steps,
    required double weight,
    required double duration,
    required double distance,
    String? summary,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}
