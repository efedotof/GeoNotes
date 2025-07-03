// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intersection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Intersection _$IntersectionFromJson(Map<String, dynamic> json) =>
    _Intersection(
      location: (json['location'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      bearings: (json['bearings'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      entry: (json['entry'] as List<dynamic>).map((e) => e as bool).toList(),
      out: (json['out'] as num?)?.toInt(),
      in_: (json['in_'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IntersectionToJson(_Intersection instance) =>
    <String, dynamic>{
      'location': instance.location,
      'bearings': instance.bearings,
      'entry': instance.entry,
      'out': instance.out,
      'in_': instance.in_,
    };
