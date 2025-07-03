import 'package:freezed_annotation/freezed_annotation.dart';

part "maneuver.freezed.dart";
part "maneuver.g.dart";

@freezed
abstract class Maneuver with _$Maneuver {
  const factory Maneuver({
    required List<double> location,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'bearing_after') required int bearingAfter,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'bearing_before') required int bearingBefore,
    required String type,
    required String modifier,
    int? exit,
  }) = _Maneuver;

  factory Maneuver.fromJson(Map<String, dynamic> json) =>
      _$ManeuverFromJson(json);
}
