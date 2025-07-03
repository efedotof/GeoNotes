import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/location_model/location_model.dart';
import 'package:geo_notes/map_repository/search/search_interface.dart';
// import 'package:geocoding/geocoding.dart';

part 'searche_state.dart';
part 'searche_cubit.freezed.dart';

class SearcheCubit extends Cubit<SearcheState> {
  SearcheCubit({required SearchInterface searchInterface})
      : _searchInterface = searchInterface,
        super(SearcheState.initial());

  final SearchInterface _searchInterface;

  Future<void> searchLocations({required String query}) async {
    if (query.isEmpty) {
      emit(SearcheState.initial());
    }

    emit(SearcheState.searcheLoading());
    try {
      final locations = await _searchInterface.searchLocation(query: query);

      if (locations.isEmpty) {
        emit(SearcheState.searcheEmpty(
            text: "По вашему запросу ничего не найдено"));
      } else {
        emit(SearcheState.searcheSuccess(locations: locations));
      }
    } catch (e) {
      debugPrint("Произошла ошибка: ${e.toString()}");
      emit(SearcheState.searcheError(message: e.toString()));
    }
  }

  void clearSearch() {
    emit(SearcheState.initial());
  }
}
