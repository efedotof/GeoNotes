import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part "maneuver.freezed.dart";
part "maneuver.g.dart";

@freezed
@HiveType(typeId: 5)
abstract class Maneuver with _$Maneuver {
  const factory Maneuver({
    @HiveField(0) required List<double> location,
    @HiveField(1) @JsonKey(name: 'bearing_after') required int bearingAfter,
    @HiveField(2) @JsonKey(name: 'bearing_before') required int bearingBefore,
    @HiveField(3) required String type,
    @HiveField(4) required String modifier,
    @HiveField(5) int? exit,
  }) = _Maneuver;

  factory Maneuver.fromJson(Map<String, dynamic> json) =>
      _$ManeuverFromJson(json);
}
