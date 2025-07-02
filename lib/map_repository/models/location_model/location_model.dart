import 'package:freezed_annotation/freezed_annotation.dart';

part "location_model.freezed.dart";
part "location_model.g.dart";

@freezed
abstract class LocationModel with _$LocationModel {
  const factory LocationModel(
      {required String displayName,
      required double latitude,
      required double longitude}) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}
