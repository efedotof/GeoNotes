// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Step _$StepFromJson(Map<String, dynamic> json) => _Step(
      intersections: (json['intersections'] as List<dynamic>)
          .map((e) => Intersection.fromJson(e as Map<String, dynamic>))
          .toList(),
      drivingSide: json['driving_side'] as String,
      geometry: json['geometry'] as String,
      maneuver: Maneuver.fromJson(json['maneuver'] as Map<String, dynamic>),
      name: json['name'] as String,
      mode: json['mode'] as String,
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$StepToJson(_Step instance) => <String, dynamic>{
      'intersections': instance.intersections,
      'driving_side': instance.drivingSide,
      'geometry': instance.geometry,
      'maneuver': instance.maneuver,
      'name': instance.name,
      'mode': instance.mode,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
    };
