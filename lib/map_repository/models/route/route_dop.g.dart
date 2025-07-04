// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_dop.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RouteDopAdapter extends TypeAdapter<RouteDop> {
  @override
  final typeId = 2;

  @override
  RouteDop read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RouteDop(
      legs: (fields[0] as List).cast<Leg>(),
      weightName: fields[1] as String,
      weight: (fields[2] as num).toDouble(),
      duration: (fields[3] as num).toDouble(),
      distance: (fields[4] as num).toDouble(),
      summary: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RouteDop obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.legs)
      ..writeByte(1)
      ..write(obj.weightName)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.distance)
      ..writeByte(5)
      ..write(obj.summary);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteDopAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteDop _$RouteDopFromJson(Map<String, dynamic> json) => _RouteDop(
      legs: (json['legs'] as List<dynamic>)
          .map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightName: json['weight_name'] as String,
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$RouteDopToJson(_RouteDop instance) => <String, dynamic>{
      'legs': instance.legs,
      'weight_name': instance.weightName,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'summary': instance.summary,
    };
