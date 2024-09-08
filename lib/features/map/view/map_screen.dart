import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/cubit/marker_cubit.dart';
import 'package:geo_notes/features/map/cubit/map_cubit.dart';

import '../widget/widget.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    context.read<MapCubit>().initializeMap(mapController);
    context.read<MarkerCubit>();

    return Scaffold(
      body: BlocBuilder<MapCubit, MapState>(
        builder: (context, mapState) {
          if (mapState is MapLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (mapState is MapLocationUpdated) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              mapController.move(mapState.location, 17);
            });

            return MapContent(
              mapController: mapController,
              location: mapState.location,
              cityName: mapState.cityName,
            );
          } else if (mapState is MapPermissionDenied) {
            return const MapPermissionDeniedContent();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
