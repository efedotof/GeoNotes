// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
      legs: (json['legs'] as List<dynamic>)
          .map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightName: json['weight_name'] as String,
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
      'legs': instance.legs,
      'weight_name': instance.weightName,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'summary': instance.summary,
    };
