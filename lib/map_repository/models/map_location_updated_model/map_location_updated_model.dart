import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:latlong2/latlong.dart';

part "map_location_updated_model.freezed.dart";

@freezed
abstract class MapLocationUpdatedModel with _$MapLocationUpdatedModel {
  factory MapLocationUpdatedModel({
    required CityModel? cityModel,
    required LatLng? location,
  }) = _MapLocationUpdatedModel;
}
