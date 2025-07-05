import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:hive_ce/hive.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.listanable,
      required this.box});

  final String title;
  final String subtitle;
  final ValueListenable<Box<dynamic>> listanable;
  final Box box;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.titleSmall),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => context.read<SavedCubit>().openNewScreen(
            title: title, subtitle: subtitle, listanable: listanable, box: box),
      ),
    );
  }
}
