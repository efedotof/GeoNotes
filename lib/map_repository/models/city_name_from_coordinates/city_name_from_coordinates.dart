import 'package:freezed_annotation/freezed_annotation.dart';

part "city_name_from_coordinates.freezed.dart";

@freezed
abstract class CityNameFromCoordinates with _$CityNameFromCoordinates {
  factory CityNameFromCoordinates(
      {required double latitude,
      required double longitude}) = _CityNameFromCoordinates;
}
