import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:geo_notes/features/home/cubit/cubit/marker_cubit.dart';
// import 'package:geo_notes/features/home/cubit/map_cubit.dart';

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
    // context.read<MapCubit>().initializeMap(mapController);
    // context.read<MarkerCubit>();

    return Scaffold(
        // body: BlocBuilder<MapCubit, MapState>(
        //   builder: (context, mapState) {
        //     if (mapState is MapLoading) {
        //       return const Center(child: CircularProgressIndicator());
        //     } else if (mapState is MapLocationUpdated ||
        //         mapState is MapMarkerAdded) {
        //       WidgetsBinding.instance.addPostFrameCallback((_) {
        //         final location = (mapState as dynamic).location;
        //         mapController.move(location, 17);
        //       });

        //       final location = mapState is MapLocationUpdated
        //           ? mapState.location
        //           : (mapState as MapMarkerAdded).location;
        //       final cityName = mapState is MapLocationUpdated
        //           ? mapState.cityName
        //           : (mapState as MapMarkerAdded).cityName;

        //       return MapContent(
        //         mapController: mapController,
        //         location: location,
        //         cityName: cityName,
        //         markerLocation: mapState is MapMarkerAdded ? location : null,
        //         markerCityName: mapState is MapMarkerAdded ? cityName : null,
        //       );
        //     } else if (mapState is MapPermissionDenied) {
        //       return const MapPermissionDeniedContent();
        //     } else {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //   },
        // ),
        );
  }
}
