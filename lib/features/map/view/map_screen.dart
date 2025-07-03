import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/map/widget/map_content.dart';
import 'package:geo_notes/features/map/widget/map_permission_denied_content.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    context.read<MapCubit>().initializeMap();
    return Scaffold(
      body: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            mapLoading: () => const Center(child: CircularProgressIndicator()),
            mapPermissionDenied: () => const MapPermissionDeniedContent(),
            mapLocationUpdated: (location, cityName) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context
                    .read<MapCubit>()
                    .mapInterface
                    .mapController
                    .move(location, 17);
              });
              return MapContent(
                mapController:
                    context.read<MapCubit>().mapInterface.mapController,
                location: location,
                cityName: cityName,
              );
            },
            mapMarkerAdded: (location, cityName) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context
                    .read<MapCubit>()
                    .mapInterface
                    .mapController
                    .move(location, 17);
              });
              return MapContent(
                mapController:
                    context.read<MapCubit>().mapInterface.mapController,
                location: context.read<MapCubit>().mapInterface.location != null
                    ? context.read<MapCubit>().mapInterface.location!
                    : LatLng(0, 0),
                cityName: cityName,
                markerLocation:
                    context.read<MapCubit>().mapInterface.markerLocation,
                markerCityName: cityName,
              );
            },
          );
        },
      ),
    );
  }
}
