import 'package:freezed_annotation/freezed_annotation.dart';

part "intersection.freezed.dart";
part "intersection.g.dart";

@freezed
abstract class Intersection with _$Intersection {
  const factory Intersection({
    required List<double> location,
    required List<int> bearings,
    required List<bool> entry,
    int? out,
    int? in_,
  }) = _Intersection;

  factory Intersection.fromJson(Map<String, dynamic> json) =>
      _$IntersectionFromJson(json);
}
