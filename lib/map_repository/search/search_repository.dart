import "package:flutter/material.dart";
import "package:geo_notes/map_repository/models/location_model/location_model.dart";

import "search_interface.dart";
import "package:dio/dio.dart";

class SearchRepository implements SearchInterface {
  final Dio _dio = Dio(BaseOptions(
      headers: {'User-Agent': 'geo_notes/1.0.1 (fedmehol@icloud.com)'}));

  @override
  Future<List<LocationModel>> searchLocation({required String query}) async {
    try {
      final response = await _dio.get(
          'https://nominatim.openstreetmap.org/search?q=$query&format=json');

      if (response.statusCode == 200) {
        final data = response.data;
        if (data is List && data.isNotEmpty) {
          final locations = data
              .map<LocationModel>((item) => LocationModel.fromJson(item))
              .toList();
          return locations;
        } else {
          throw Exception("No results found");
        }
      } else {
        throw Exception("Failed to load search results");
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
