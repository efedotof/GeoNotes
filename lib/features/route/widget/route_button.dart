import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedItemCubit, SelectedItemState>(
      builder: (context, state) {
        final CityModel? end = state.endRoute;
        final location = context.read<MapCubit>().mapInterface.location;

        return ElevatedButton(
          onPressed: () => context.read<RouteCubit>().fetchRoute(
              startLat: location!.latitude,
              startLon: location.longitude,
              endLat: end!.idx,
              endLon: end.idy,
              type: type),
          child: Text(
            'Начать',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        );
      },
    );
  }
}
