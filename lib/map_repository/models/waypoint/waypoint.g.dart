// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Waypoint _$WaypointFromJson(Map<String, dynamic> json) => _Waypoint(
      hint: json['hint'] as String,
      location: (json['location'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      name: json['name'] as String,
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$WaypointToJson(_Waypoint instance) => <String, dynamic>{
      'hint': instance.hint,
      'location': instance.location,
      'name': instance.name,
      'distance': instance.distance,
    };
