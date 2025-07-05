// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListBoxAdapter extends TypeAdapter<ListBox> {
  @override
  final typeId = 0;

  @override
  ListBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListBox(
      id: fields[0] as String,
      latitude: (fields[1] as num).toDouble(),
      longitude: (fields[2] as num).toDouble(),
      displayName: fields[3] as String,
      description: fields[4] as String,
      images: (fields[5] as List).cast<Uint8List>(),
    );
  }

  @override
  void write(BinaryWriter writer, ListBox obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.displayName)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
