// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReverseGeocodingModelAdapter extends TypeAdapter<ReverseGeocodingModel> {
  @override
  final typeId = 3;

  @override
  ReverseGeocodingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReverseGeocodingModel(
      displayName: fields[0] as String,
      lat: (fields[1] as num).toDouble(),
      lon: (fields[2] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, ReverseGeocodingModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.displayName)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.lon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReverseGeocodingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReverseGeocodingModel _$ReverseGeocodingModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodingModel(
      displayName: json['displayName'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$ReverseGeocodingModelToJson(
        _ReverseGeocodingModel instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'lat': instance.lat,
      'lon': instance.lon,
    };
