import 'package:geo_notes/map_repository/models/reverse_geocoding_model/reverse_geocoding_model.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';

abstract interface class RoutingInterface {
  Future<ReverseGeocodingModel> getAddressFromCoordinates({
    required double latitude,
    required double longitude,
  });

  Future<RouteModel> getRoute({
    required double startLat,
    required double startLon,
    required double endLat,
    required double endLon,
    required String type,
  });
}
