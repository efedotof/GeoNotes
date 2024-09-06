<<<<<<< HEAD
// map_screen.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/map_cubit.dart';
import 'package:geo_notes/features/map/widget/model/city_model.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapController mapController = MapController();
  CityModel? selectedCity;

  @override
Widget build(BuildContext context) {

  context.read<MapCubit>().initializeMap(mapController);

  return Scaffold(
    body: BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        if (state is MapLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MapLocationUpdated) {
          return Stack(
            children: [
              FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  initialCenter: state.location,
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
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: state.location,
                        width: 20,
                        height: 20,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEBE76C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                right: 10,
                child: GestureDetector(
                  onTap: () =>

                    context.read<MapCubit>().updateCurrentLocation(mapController),
                 
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
                  child: DropdownButton<CityModel>(
                    value: selectedCity,
                    hint: const Text('Select City'),
                    items: context.read<MapCubit>().cities.map((city) {
                      return DropdownMenuItem<CityModel>(
                        value: city,
                        child: Text(city.name),
                      );
                    }).toList(),
                    onChanged: (city) {
                      setState(() {
                        selectedCity = city;
                      });
                      if (city != null) {
                        context.read<MapCubit>().moveToCity(city, mapController);
                      }
                    },
                  ),
                ),
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
=======
// map_screen.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geo_notes/features/map/cubit/map_cubit.dart';
import 'package:geo_notes/features/map/widget/model/city_model.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapController mapController = MapController();
  CityModel? selectedCity;

  @override
Widget build(BuildContext context) {

  context.read<MapCubit>().initializeMap(mapController);

  return Scaffold(
    body: BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        if (state is MapLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MapLocationUpdated) {
          return Stack(
            children: [
              FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  initialCenter: state.location,
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
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: state.location,
                        width: 20,
                        height: 20,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEBE76C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                right: 10,
                child: GestureDetector(
                  onTap: () =>

                    context.read<MapCubit>().updateCurrentLocation(mapController),
                 
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
                  child: DropdownButton<CityModel>(
                    value: selectedCity,
                    hint: const Text('Select City'),
                    items: context.read<MapCubit>().cities.map((city) {
                      return DropdownMenuItem<CityModel>(
                        value: city,
                        child: Text(city.name),
                      );
                    }).toList(),
                    onChanged: (city) {
                      setState(() {
                        selectedCity = city;
                      });
                      if (city != null) {
                        context.read<MapCubit>().moveToCity(city, mapController);
                      }
                    },
                  ),
                ),
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
>>>>>>> 2b05aa3260d4acb858d542f827af24c877766ba5
