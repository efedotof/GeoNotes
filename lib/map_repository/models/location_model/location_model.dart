// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "location_model.freezed.dart";
part "location_model.g.dart";

@freezed
abstract class LocationModel with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(
      name: 'lat',
      fromJson: _stringToDouble,
      toJson: _doubleToString,
    )
    required double latitude,
    @JsonKey(
      name: 'lon',
      fromJson: _stringToDouble,
      toJson: _doubleToString,
    )
    required double longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}

double _stringToDouble(dynamic value) {
  if (value is String) {
    return double.tryParse(value) ?? 0.0;
  } else if (value is double) {
    return value;
  } else if (value is int) {
    return value.toDouble();
  }
  return 0.0;
}

String _doubleToString(double value) => value.toString();
