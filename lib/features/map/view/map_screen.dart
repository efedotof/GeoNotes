import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/map_cubit.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});


  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options: const MapOptions(
                    initialZoom: 15.5,
                    // zoom: 15.5,
                    maxZoom: 17,
                    minZoom: 3.5,
                  ),
                  mapController: context.read<MapCubit>().mapController,
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.efedotov.notes_on_the_map',
                      retinaMode: true,
                    ),
                    MarkerLayer(markers: [
                      Marker(
                        point: context.read<MapCubit>().currentLocation,
                        width: 20,
                        height: 20,
                        child:  Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEBE76C),
                          ),
                        ),
                      ),
                     
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}