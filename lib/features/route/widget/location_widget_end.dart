import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';

class LocationWidgetEnd extends StatelessWidget {
  const LocationWidgetEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<SelectedItemCubit, SelectedItemState>(
        builder: (context, state) {
          final CityModel? end = state.endRoute;

          if (end == null) {
            return ListTile(
              leading: const Icon(
                Icons.location_pin,
                color: Colors.red,
              ),
              title: const Text("Конечная точка не выбрана"),
              subtitle: const Text("Выберите точку через поиск"),
              trailing: const Text(
                'Карта',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Изменить можно через вкладку "Поиск"'))),
            );
          }
          return ListTile(
            leading: const Icon(
              Icons.location_pin,
              color: Colors.red,
            ),
            subtitle: Text("x: ${end.idx}; y: ${end.idy}"),
            title: Text(end.name),
            trailing: const Text(
              'Карта',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Изменить можно через вкладку "Поиск"'))),
          );
        },
      ),
    );
  }
}
