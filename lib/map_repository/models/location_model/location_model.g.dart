// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    _LocationModel(
      displayName: json['display_name'] as String,
      latitude: _stringToDouble(json['lat']),
      longitude: _stringToDouble(json['lon']),
    );

Map<String, dynamic> _$LocationModelToJson(_LocationModel instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'lat': _doubleToString(instance.latitude),
      'lon': _doubleToString(instance.longitude),
    };
