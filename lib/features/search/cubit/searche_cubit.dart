import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';

part 'searche_state.dart';
part 'searche_cubit.freezed.dart';

class SearcheCubit extends Cubit<SearcheState> {
  SearcheCubit() : super(SearcheState.initial());

  Future<void> searchLocation(String query) async {
    if (query.isEmpty) {
      emit(SearcheState.initial());
      return;
    }

    emit(SearcheState.searcheLoading());
    try {
      final response = await http.get(
        Uri.parse(
            'https://nominatim.openstreetmap.org/search?q=$query&format=json'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        debugPrint('Raw JSON data: $data');
        if (data.isNotEmpty) {
          final locations = data
              .map<Location>((item) => LocationModel.fromJson(item))
              .toList();
          emit(SearcheState.searcheSuccess(locations: locations));
        } else {
          emit(const SearcheState.searcheError('No results found'));
        }
      } else {
        emit(const SearcheState.searcheError('Failed to load search results'));
      }
    } catch (e) {
      emit(SearcheState.searcheError('Error: ${e.toString()}'));
    }
  }

  void clearSearch() {
    emit(SearcheState.initial());
  }
}
