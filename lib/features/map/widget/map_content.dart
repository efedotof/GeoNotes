import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/marker/marker_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:latlong2/latlong.dart';
import 'add_local_button.dart';
import 'custom_image_marker.dart';
import 'location_button.dart';
import 'city_name_display.dart';

class MapContent extends StatelessWidget {
  final MapController mapController;
  final LatLng location;
  final String cityName;
  final LatLng? markerLocation;
  final String? markerCityName;
  final List<LatLng>? routePoints;

  const MapContent({
    super.key,
    required this.mapController,
    required this.location,
    required this.cityName,
    this.markerLocation,
    this.markerCityName,
    this.routePoints,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
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
            if (routePoints != null)
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: routePoints!,
                    color: Colors.blue.shade700,
                    strokeWidth: 4,
                  ),
                ],
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

                    markers.add(
                      Marker(
                        point: location,
                        width: 40,
                        height: 40,
                        child: Transform.rotate(
                          angle: rotation * (3.14159 / 180),
                          child: const Icon(Icons.send_rounded,
                              color: Color(0xFF10282E)),
                        ),
                      ),
                    );

                    return MarkerLayer(markers: markers);
                  },
                );
              },
            ),
          ],
        ),
        LocationButton(mapController: mapController),
        AddLocalButton(),
        CityNameDisplay(cityName: cityName),
      ],
    );
  }
}
