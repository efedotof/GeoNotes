// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_name_from_coordinates.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityNameFromCoordinatesAdapter
    extends TypeAdapter<CityNameFromCoordinates> {
  @override
  final typeId = 8;

  @override
  CityNameFromCoordinates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityNameFromCoordinates(
      latitude: (fields[0] as num).toDouble(),
      longitude: (fields[1] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, CityNameFromCoordinates obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityNameFromCoordinatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
