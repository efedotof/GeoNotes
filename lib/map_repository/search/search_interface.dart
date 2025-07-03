import 'package:geo_notes/map_repository/models/location_model/location_model.dart';

abstract interface class SearchInterface {
  Future<List<LocationModel>> searchLocation({required String query});
}
