import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'reverse_geocoding_model.freezed.dart';
part 'reverse_geocoding_model.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class ReverseGeocodingModel with _$ReverseGeocodingModel {
  factory ReverseGeocodingModel(
      {@HiveField(0) required String displayName,
      @HiveField(1) required double lat,
      @HiveField(2) required double lon}) = _ReverseGeocodingModel;

  factory ReverseGeocodingModel.fromJson(Map<String, Object?> json) =>
      _$ReverseGeocodingModelFromJson(json);
}
