import 'dart:typed_data';
import 'package:hive_ce/hive.dart';

part 'list_box.g.dart';

@HiveType(typeId: 0)
class ListBox extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final double latitude;

  @HiveField(2)
  final double longitude;

  @HiveField(3)
  final String displayName;

  @HiveField(4)
  final String description;

  @HiveField(5)
  final List<Uint8List> images;

  ListBox({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.displayName,
    required this.description,
    required this.images,
  });
}
