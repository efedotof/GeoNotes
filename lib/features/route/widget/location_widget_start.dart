import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';

class LocationWidgetStart extends StatelessWidget {
  const LocationWidgetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.location_pin),
        title: const Text('Моя позиция'),
        subtitle: Text(
            "x: ${context.read<MapCubit>().mapInterface.location!.latitude}; y: ${context.read<MapCubit>().mapInterface.location!.longitude}"),
        trailing: const Text(
          'Карта',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
        ),
        onTap: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Невозможно изменить"))),
      ),
    );
  }
}
