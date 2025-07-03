// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReverseGeocodingModel _$ReverseGeocodingModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodingModel(
      displayName: json['displayName'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$ReverseGeocodingModelToJson(
        _ReverseGeocodingModel instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'lat': instance.lat,
      'lon': instance.lon,
    };
