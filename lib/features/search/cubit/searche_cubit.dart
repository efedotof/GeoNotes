import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:geo_notes/map_repository/models/location_model/location_model.dart';
import 'package:geo_notes/map_repository/search/search_interface.dart';

import 'package:latlong2/latlong.dart';

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

  void Function()? onTapSearcheResult(
      {required BuildContext context,
      required LocationModel location,
      required bool isLocal}) {
    final latLng = LatLng(location.latitude, location.longitude);
    context
        .read<MapCubit>()
        .addMarkerAtLocation(location: latLng, cityName: location.displayName);
    context.read<SelectedItemCubit>().setEndRoute(CityModel(
        name: location.displayName,
        idx: location.latitude,
        idy: location.longitude));

    if (!isLocal) {
      context.read<SavedCubit>().storeinterface.addLocationModel(
          item: LocationModel(
              displayName: location.displayName,
              latitude: location.latitude,
              longitude: location.longitude));
    }
    return null;
  }
}
