import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:latlong2/latlong.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearcheCubit, SearcheState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('Введите запрос для поиска')),
          searcheLoading: () =>
              const Center(child: CircularProgressIndicator()),
          searcheSuccess: (locations) => ListView.builder(
            shrinkWrap: true,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];
              return Card(
                child: ListTile(
                  title: Text(
                    location.displayName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    location.displayName,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
                    final latLng =
                        LatLng(location.latitude, location.longitude);
                    context.read<MapCubit>().addMarkerAtLocation(
                        location: latLng, cityName: location.displayName);
                    context.read<SelectedItemCubit>().setEndRoute(CityModel(
                        name: location.displayName,
                        idx: location.latitude,
                        idy: location.longitude));
                  },
                ),
              );
            },
          ),
          searcheError: (message) => Center(child: Text('Ошибка: $message')),
          searcheEmpty: (text) =>
              const Center(child: Text('Ничего не найдено')),
        );
      },
    );
  }
}
