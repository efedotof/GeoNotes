// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_location_updated_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapLocationUpdatedModelAdapter
    extends TypeAdapter<MapLocationUpdatedModel> {
  @override
  final typeId = 4;

  @override
  MapLocationUpdatedModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapLocationUpdatedModel(
      cityModel: fields[0] as CityModel?,
      location: fields[1] as LatLng?,
    );
  }

  @override
  void write(BinaryWriter writer, MapLocationUpdatedModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.cityModel)
      ..writeByte(1)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapLocationUpdatedModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
