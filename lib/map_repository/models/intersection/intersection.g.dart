// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intersection.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IntersectionAdapter extends TypeAdapter<Intersection> {
  @override
  final typeId = 7;

  @override
  Intersection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Intersection(
      location: (fields[0] as List).cast<double>(),
      bearings: (fields[1] as List).cast<int>(),
      entry: (fields[2] as List).cast<bool>(),
      out: (fields[3] as num?)?.toInt(),
      in_: (fields[4] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Intersection obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.bearings)
      ..writeByte(2)
      ..write(obj.entry)
      ..writeByte(3)
      ..write(obj.out)
      ..writeByte(4)
      ..write(obj.in_);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntersectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
