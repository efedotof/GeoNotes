import 'package:freezed_annotation/freezed_annotation.dart';

part 'reverse_geocoding_model.freezed.dart';
part 'reverse_geocoding_model.g.dart';

@freezed
abstract class ReverseGeocodingModel with _$ReverseGeocodingModel {
  factory ReverseGeocodingModel(
      {required String displayName,
      required double lat,
      required double lon}) = _ReverseGeocodingModel;

  factory ReverseGeocodingModel.fromJson(Map<String, Object?> json) =>
      _$ReverseGeocodingModelFromJson(json);
}
