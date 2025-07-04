import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part "city_name_from_coordinates.freezed.dart";
part "city_name_from_coordinates.g.dart";

@freezed
@HiveType(typeId: 8)
abstract class CityNameFromCoordinates with _$CityNameFromCoordinates {
  factory CityNameFromCoordinates(
      {@HiveField(0) required double latitude,
      @HiveField(1) required double longitude}) = _CityNameFromCoordinates;
}
