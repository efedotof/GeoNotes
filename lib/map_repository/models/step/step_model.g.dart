// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StepModelAdapter extends TypeAdapter<StepModel> {
  @override
  final typeId = 10;

  @override
  StepModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StepModel(
      intersections: (fields[0] as List).cast<Intersection>(),
      drivingSide: fields[1] as String,
      geometry: fields[2] as String,
      maneuver: fields[3] as Maneuver,
      name: fields[4] as String,
      mode: fields[5] as String,
      weight: (fields[6] as num).toDouble(),
      duration: (fields[7] as num).toDouble(),
      distance: (fields[8] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, StepModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.intersections)
      ..writeByte(1)
      ..write(obj.drivingSide)
      ..writeByte(2)
      ..write(obj.geometry)
      ..writeByte(3)
      ..write(obj.maneuver)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.mode)
      ..writeByte(6)
      ..write(obj.weight)
      ..writeByte(7)
      ..write(obj.duration)
      ..writeByte(8)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StepModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StepModel _$StepModelFromJson(Map<String, dynamic> json) => _StepModel(
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

Map<String, dynamic> _$StepModelToJson(_StepModel instance) =>
    <String, dynamic>{
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
