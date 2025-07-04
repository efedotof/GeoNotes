import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';
import 'package:geo_notes/map_repository/models/models.dart';
import 'package:geo_notes/store/repository/store_interface.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
part 'saved_state.dart';
part 'saved_cubit.freezed.dart';

class SavedCubit extends Cubit<SavedState> {
  SavedCubit({required this.storeinterface}) : super(SavedState.initial());

  final StoreInterface storeinterface;

  void showInnerSheet(
      {required BuildContext context,
      required String title,
      required String subtitle,
      required ValueListenable<Box<dynamic>> listanable,
      required Box box}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.1,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF7F6F2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  topLeft: Radius.circular(14),
                ),
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 20),
                  ValueListenableBuilder(
                    valueListenable: listanable,
                    builder: (context, box, _) {
                      final items = box.values.toList();
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return ListTile(
                            onTap: () {
                              if (item is LocationModel) {
                                context.maybePop();
                                context.read<SearcheCubit>().onTapSearcheResult(
                                      context: context,
                                      location: item,
                                    );
                              } else if (item is RouteModel) {
                                // context.maybePop();
                                // реализация закрытия окна + отображение маршрута.
                                // context
                                //     .read<RouteCubit>()
                                //     .localRoute(model: item);
                              } else {}
                            },
                            trailing: Icon(Icons.search),
                            title: Text(item.displayName),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
