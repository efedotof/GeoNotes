// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteModel _$RouteModelFromJson(Map<String, dynamic> json) => _RouteModel(
      code: json['code'] as String,
      routes: (json['routes'] as List<dynamic>)
          .map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => Waypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteModelToJson(_RouteModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'routes': instance.routes,
      'waypoints': instance.waypoints,
    };
