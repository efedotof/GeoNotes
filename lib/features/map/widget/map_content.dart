import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/cubit/marker_cubit.dart';
import 'location_button.dart';
import 'city_name_display.dart';

class MapContent extends StatelessWidget {
  final MapController mapController;
  final LatLng location; // User's current location
  final String cityName;
  final LatLng? markerLocation; // Predefined marker location
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
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
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
                    if (markerLocation != null)
                      Marker(
                        point: markerLocation!,
                        width: 40,
                        height: 40,
                        child: Transform.rotate(
                          angle: rotation * (3.14159 / 180), // Rotation in radians
                          child: const Icon(
                            Icons.flag, // Marker icon
                            color: Colors.red,
                          ),
                        ),
                      ),
                    Marker(
                      point: location,
                      width: 40,
                      height: 40,
                      child: Transform.rotate(
                        angle: rotation * (3.14159 / 180), // Rotation in radians
                        child: const Icon(
                          Icons.send_rounded, // Marker icon
                          color: Color(0xFF10282E),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        LocationButton(mapController: mapController),
        CityNameDisplay(cityName: cityName),
      ],
    );
  }
}
