import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
abstract class CityModel with _$CityModel {
  const factory CityModel({
    required String name,
    required double idx,
    required double idy,
  }) = _CityModel;
}
