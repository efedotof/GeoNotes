// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maneuver.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ManeuverAdapter extends TypeAdapter<Maneuver> {
  @override
  final typeId = 5;

  @override
  Maneuver read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Maneuver(
      location: (fields[0] as List).cast<double>(),
      bearingAfter: (fields[1] as num).toInt(),
      bearingBefore: (fields[2] as num).toInt(),
      type: fields[3] as String,
      modifier: fields[4] as String,
      exit: (fields[5] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Maneuver obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.bearingAfter)
      ..writeByte(2)
      ..write(obj.bearingBefore)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.modifier)
      ..writeByte(5)
      ..write(obj.exit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ManeuverAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
