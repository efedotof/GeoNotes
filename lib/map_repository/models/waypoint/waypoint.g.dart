// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waypoint.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaypointAdapter extends TypeAdapter<Waypoint> {
  @override
  final typeId = 12;

  @override
  Waypoint read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Waypoint(
      hint: fields[0] as String,
      location: (fields[1] as List).cast<double>(),
      name: fields[2] as String,
      distance: (fields[3] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Waypoint obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.hint)
      ..writeByte(1)
      ..write(obj.location)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaypointAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
