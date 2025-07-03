import 'package:dio/dio.dart';
import 'package:geo_notes/map_repository/models/reverse_geocoding_model/reverse_geocoding_model.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';
import 'routing_interface.dart';

class RoutingRepository implements RoutingInterface {
  final Dio _dioNominatim = Dio(BaseOptions(
    baseUrl: "https://nominatim.openstreetmap.org",
    headers: {"Accept": "application/json", "User-Agent": "FlutterApp"},
  ));

  final Dio _dioRouting = Dio(BaseOptions(
    baseUrl: "https://routing.openstreetmap.de",
    headers: {"Accept": "application/json"},
  ));

  @override
  Future<ReverseGeocodingModel> getAddressFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _dioNominatim.get('/reverse', queryParameters: {
      "lat": latitude,
      "lon": longitude,
      "format": "json",
    });

    return ReverseGeocodingModel.fromJson(response.data);
  }

  @override
  Future<RouteModel> getRoute({
    required double startLat,
    required double startLon,
    required double endLat,
    required double endLon,
    required String type,
  }) async {
    final response = await _dioRouting.get(
      '/$type/route/v1/driving/$startLon,$startLat;$endLon,$endLat',
      queryParameters: {
        'overview': false,
        'geometries': 'polyline',
        'steps': true,
      },
    );

    return RouteModel.fromJson(response.data);
  }
}
