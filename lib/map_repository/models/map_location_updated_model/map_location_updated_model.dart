import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:latlong2/latlong.dart';

part "map_location_updated_model.freezed.dart";
part "map_location_updated_model.g.dart";

@freezed
@HiveType(typeId: 4)
abstract class MapLocationUpdatedModel with _$MapLocationUpdatedModel {
  factory MapLocationUpdatedModel({
    @HiveField(0) required CityModel? cityModel,
    @HiveField(1) required LatLng? location,
  }) = _MapLocationUpdatedModel;
}
