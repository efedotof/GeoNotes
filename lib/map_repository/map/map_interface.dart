import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:geo_notes/map_repository/models/map_location_updated_model/map_location_updated_model.dart';
import 'package:latlong2/latlong.dart';

abstract interface class MapInterface {
  Future<MapLocationUpdatedModel> initializeMap();
  Future<MapLocationUpdatedModel> updateCurrentLocation();
  Future<MapLocationUpdatedModel> moveToCity({required CityModel city});
  Future<void> addMarkerAtLocation({
    required LatLng location,
    required String cityName,
  });

  MapController get mapController;
  LatLng? get markerLocation;
  LatLng? get location;
  Stream<LatLng> getLocationStream();
  Future<CityModel?> getCityFromLocation(LatLng location);
}
