// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maneuver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Maneuver _$ManeuverFromJson(Map<String, dynamic> json) => _Maneuver(
      location: (json['location'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      bearingAfter: (json['bearing_after'] as num).toInt(),
      bearingBefore: (json['bearing_before'] as num).toInt(),
      type: json['type'] as String,
      modifier: json['modifier'] as String,
      exit: (json['exit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ManeuverToJson(_Maneuver instance) => <String, dynamic>{
      'location': instance.location,
      'bearing_after': instance.bearingAfter,
      'bearing_before': instance.bearingBefore,
      'type': instance.type,
      'modifier': instance.modifier,
      'exit': instance.exit,
    };
