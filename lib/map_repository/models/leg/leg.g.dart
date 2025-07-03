// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Leg _$LegFromJson(Map<String, dynamic> json) => _Leg(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$LegToJson(_Leg instance) => <String, dynamic>{
      'steps': instance.steps,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'summary': instance.summary,
    };
