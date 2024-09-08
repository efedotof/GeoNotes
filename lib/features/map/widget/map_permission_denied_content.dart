import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPermissionDeniedContent extends StatelessWidget {
  const MapPermissionDeniedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
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
  }
}
