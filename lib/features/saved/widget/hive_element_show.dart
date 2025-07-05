import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';
import 'package:geo_notes/map_repository/models/location_model/location_model.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';
import 'package:geo_notes/route/app_route.dart';
import 'package:hive_ce/hive.dart';

class HiveElementShow extends StatefulWidget {
  const HiveElementShow(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.listanable,
      required this.box,
      required this.icon});
  final String title;
  final String subtitle;
  final ValueListenable<Box<dynamic>> listanable;
  final Box box;
  final IconData icon;
  @override
  State<HiveElementShow> createState() => _HiveElementShowState();
}

class _HiveElementShowState extends State<HiveElementShow> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedCubit, SavedState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => context.read<SavedCubit>().cancel(),
                    icon: Icon(Icons.arrow_back_ios)),
                const SizedBox(
                  width: 30,
                ),
                Text(widget.title),
              ],
            ),
            ValueListenableBuilder(
                valueListenable: widget.listanable,
                builder: (context, box, _) {
                  debugPrint(box.name);
                  final items = box.values.toList();
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            if (item is LocationModel) {
                              debugPrint("Это LocationModel");
                              context.read<SavedCubit>().cancel();
                              context.read<SearcheCubit>().onTapSearcheResult(
                                    context: context,
                                    location: item,
                                    isLocal: true,
                                  );
                              context.replaceRoute(RouteRoute());
                            } else if (item is RouteModel) {
                              debugPrint("Это RouteModel");
                              context.read<SavedCubit>().cancel();
                              context
                                  .read<RouteCubit>()
                                  .localRoute(context: context, model: item);
                            } else {
                              debugPrint("Это ListBox");
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  child: Icon(
                                    widget.icon,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    item.displayName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ],
        );
      },
    );
  }
}
