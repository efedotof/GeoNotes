import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part "intersection.freezed.dart";
part "intersection.g.dart";

@freezed
@HiveType(typeId: 7)
abstract class Intersection with _$Intersection {
  const factory Intersection({
    @HiveField(0) required List<double> location,
    @HiveField(1) required List<int> bearings,
    @HiveField(2) required List<bool> entry,
    @HiveField(3) int? out,
    @HiveField(4) int? in_,
  }) = _Intersection;

  factory Intersection.fromJson(Map<String, dynamic> json) =>
      _$IntersectionFromJson(json);
}
