import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/location/location_cubit.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/map/widget/map_content.dart';
import 'package:geo_notes/features/map/widget/map_permission_denied_content.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<LocationCubit>().fetchCurrentLocation();

    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<LocationCubit, LocationState>(
            listenWhen: (previous, current) => current.maybeWhen(
              loaded: (_, __) => true,
              orElse: () => false,
            ),
            listener: (context, locationState) {},
          ),
          BlocListener<MapCubit, MapState>(
            listenWhen: (previous, current) => current.maybeMap(
              mapMarkerAdded: (_) => true,
              orElse: () => false,
            ),
            listener: (context, state) {},
          ),
        ],
        child: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, locationState) {
            return BlocBuilder<MapCubit, MapState>(
              builder: (context, mapState) {
                return locationState.maybeWhen(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  permissionDenied: () => const MapPermissionDeniedContent(),
                  loaded: (location, cityName) {
                    return MapContent(
                      mapController:
                          context.read<MapCubit>().mapInterface.mapController,
                      location: location,
                      cityName: cityName,
                      markerLocation: mapState.maybeMap(
                        mapMarkerAdded: (s) => s.markerLocation,
                        orElse: () => null,
                      ),
                      markerCityName: mapState.maybeMap(
                        mapMarkerAdded: (s) => s.cityName,
                        orElse: () => null,
                      ),
                    );
                  },
                  orElse: () =>
                      const Center(child: CircularProgressIndicator()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
