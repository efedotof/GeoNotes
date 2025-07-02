import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geo_notes/features/home/cubit/map_cubit.dart';

class LocationButton extends StatelessWidget {
  final MapController mapController;

  const LocationButton({super.key, required this.mapController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 10,
      child: GestureDetector(
        onTap: () {},
        // context.read<MapCubit>().updateCurrentLocation(mapController),
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
    );
  }
}
