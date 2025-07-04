import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'city_model.freezed.dart';
part "city_model.g.dart";

@freezed
@HiveType(typeId: 9)
abstract class CityModel with _$CityModel {
  const factory CityModel({
    @HiveField(0) required String name,
    @HiveField(1) required double idx,
    @HiveField(2) required double idy,
  }) = _CityModel;
}
