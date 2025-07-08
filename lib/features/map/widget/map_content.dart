import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/location/location_cubit.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/map/cubit/marker/marker_cubit.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:latlong2/latlong.dart';
import 'add_local_button.dart';
import 'close_route_and_marker.dart';
import 'custom_image_marker.dart';
import 'location_button.dart';
import 'city_name_display.dart';

class MapContent extends StatelessWidget {
  final MapController mapController;
  final LatLng location;
  final String cityName;
  final LatLng? markerLocation;
  final String? markerCityName;

  const MapContent({
    super.key,
    required this.mapController,
    required this.location,
    required this.cityName,
    this.markerLocation,
    this.markerCityName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            initialCenter: location,
            initialZoom: 15.5,
            maxZoom: 17,
            minZoom: 3.5,
            keepAlive: false,
            onMapReady: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                mapController.move(location, 17);
              });
            },
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.efedotov.notes_on_the_map',
              retinaMode: false,
            ),
            BlocBuilder<RouteCubit, RouteState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (route) {
                    final points =
                        context.read<RouteCubit>().convertRouteToPoints(route);
                    if (points == null) return const SizedBox.shrink();
                    return PolylineLayer(
                      polylines: [
                        Polyline(
                          points: points,
                          color: Colors.blue.shade700,
                          strokeWidth: 4,
                        ),
                      ],
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            BlocBuilder<MarkerCubit, MarkerState>(
              builder: (context, state) {
                double rotation = 0;

                state.when(
                  initial: () => rotation = 0,
                  markerRotationUpdated: (heading) => rotation = heading,
                );

                return ValueListenableBuilder(
                  valueListenable: context
                      .read<SavedCubit>()
                      .storeinterface
                      .listenableListBox,
                  builder: (context, box, _) {
                    final markers = <Marker>[];
                    final items = box.values.toList();

                    for (int i = 0; i < items.length; i++) {
                      final item = items[i];
                      markers.add(
                        Marker(
                          point: LatLng(item.latitude, item.longitude),
                          width: 30,
                          height: 30,
                          child: CustomImageMarker(
                            imageBytes: item.images.first,
                            marker: item,
                            index: i,
                          ),
                        ),
                      );
                    }

                    if (markerLocation != null) {
                      markers.add(
                        Marker(
                          point: markerLocation!,
                          width: 40,
                          height: 40,
                          child: const Icon(Icons.flag, color: Colors.red),
                        ),
                      );
                    }

                    final locationMarker =
                        context.select<LocationCubit, Marker?>(
                      (cubit) {
                        final state = cubit.state;
                        return state.maybeMap(
                          loaded: (loadedState) => Marker(
                            point: loadedState.location,
                            width: 40,
                            height: 40,
                            child: Transform.rotate(
                              angle: rotation * (3.14159 / 180),
                              child: const Icon(Icons.send_rounded,
                                  color: Color(0xFF10282E)),
                            ),
                          ),
                          orElse: () => null,
                        );
                      },
                    );

                    if (locationMarker != null) {
                      markers.add(locationMarker);
                    }

                    return MarkerLayer(markers: markers);
                  },
                );
              },
            ),
          ],
        ),
        LocationButton(mapController: mapController),
        AddLocalButton(),
        BlocBuilder<MapCubit, MapState>(
          builder: (context, mapState) {
            return BlocBuilder<RouteCubit, RouteState>(
              builder: (context, routeState) {
                final showClose = mapState.maybeMap(
                      mapMarkerAdded: (_) => true,
                      orElse: () => false,
                    ) ||
                    routeState.maybeMap(
                      loaded: (_) => true,
                      orElse: () => false,
                    );
                return showClose
                    ? const CloseRouteAndMarker()
                    : const SizedBox.shrink();
              },
            );
          },
        ),
        CityNameDisplay(cityName: cityName),
      ],
    );
  }
}
