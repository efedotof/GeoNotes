import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/leg/leg.dart';
import 'package:hive_ce/hive.dart';

part "route_dop.freezed.dart";
part "route_dop.g.dart";

@freezed
@HiveType(typeId: 2)
abstract class RouteDop with _$RouteDop {
  const factory RouteDop({
    @HiveField(0) required List<Leg> legs,
    @HiveField(1) @JsonKey(name: 'weight_name') required String weightName,
    @HiveField(2) required double weight,
    @HiveField(3) required double duration,
    @HiveField(4) required double distance,
    @HiveField(5) String? summary,
  }) = _RouteDop;

  factory RouteDop.fromJson(Map<String, dynamic> json) =>
      _$RouteDopFromJson(json);
}
