import 'package:geo_notes/map_repository/models/reverse_geocoding_model/reverse_geocoding_model.dart';

abstract interface class RoutingInterface {
  Future<ReverseGeocodingModel> getAddressFromCoordinates({
    required double latitude,
    required double longitude,
  });
}
