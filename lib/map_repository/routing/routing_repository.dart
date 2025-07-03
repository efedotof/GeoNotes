import 'package:dio/dio.dart';
import 'package:geo_notes/map_repository/models/reverse_geocoding_model/reverse_geocoding_model.dart';
import 'routing_interface.dart';

class RoutingRepository implements RoutingInterface {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://nominatim.openstreetmap.org",
    headers: {"Accept": "application/json", "User-Agent": "FlutterApp"},
  ));

  @override
  Future<ReverseGeocodingModel> getAddressFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _dio.get('/reverse', queryParameters: {
      "lat": latitude,
      "lon": longitude,
      "format": "json",
    });

    return ReverseGeocodingModel.fromJson(response.data);
  }
}
