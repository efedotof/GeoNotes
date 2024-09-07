import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/cubit/marker_cubit.dart';
import 'package:geo_notes/features/map/cubit/map_cubit.dart';
import 'package:latlong2/latlong.dart';

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
            return Stack(
              children: [
                FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    initialCenter: mapState.location,
                    initialZoom: 15.5,
                    maxZoom: 17,
                    minZoom: 3.5,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.efedotov.notes_on_the_map',
                      retinaMode: true,
                    ),
                    BlocBuilder<MarkerCubit, MarkerState>(
                      builder: (context, markerState) {
                        double rotation = 0;
                        if (markerState is MarkerRotationUpdated) {
                          rotation = markerState.heading;
                        }

                        return MarkerLayer(
                          markers: [
                            Marker(
                              point: mapState.location,
                              width: 40,
                              height: 40,
                              child: Transform.rotate(
                                angle: rotation * (3.14159 / 180),
                                child: const Icon(
                                  Icons.send_rounded,
                                  color: Color(0xFF10282E),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
                Positioned(
                  bottom: 30,
                  right: 10,
                  child: GestureDetector(
                    onTap: () => context
                        .read<MapCubit>()
                        .updateCurrentLocation(mapController),
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2ECEC),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.location_searching_outlined),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.06,
                  right: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2ECEC),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Text(
                      mapState.cityName,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            );
          } else if (mapState is MapPermissionDenied) {
            return FlutterMap(
              mapController: mapController,
              options: const MapOptions(
                initialCenter: LatLng(0, 0),
                initialZoom: 2.5,
                maxZoom: 17,
                minZoom: 3.5,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.efedotov.notes_on_the_map',
                  retinaMode: true,
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
