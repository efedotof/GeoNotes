import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:geo_notes/features/saved/widget/widget.dart';
import 'package:hive_ce/hive.dart';

@RoutePage()
class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleList = [
      'Сохраненные места',
      'Сохраненные маршруты',
      'История поиска'
    ];

    List<String> subtitleList = [
      'Список сохраненных мест',
      'Список сохраненных маршрутов',
      'Здесь отображаются ваши маршруты'
    ];

    List<Box> boxList = [
      context.read<SavedCubit>().storeinterface.listBox,
      context.read<SavedCubit>().storeinterface.routeModel,
      context.read<SavedCubit>().storeinterface.locationModel
    ];

    List<ValueListenable<Box<dynamic>>> listenableList = [
      context.read<SavedCubit>().storeinterface.listenableListBox,
      context.read<SavedCubit>().storeinterface.listenableRouteModel,
      context.read<SavedCubit>().storeinterface.listenableLocationModel
    ];
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return GestureDetector(
          onTap: () => AutoRouter.of(context).popUntilRoot(),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                topLeft: Radius.circular(14),
              ),
              color: Color(0xFFF7F6F2),
            ),
            child: BlocBuilder<SavedCubit, SavedState>(
              builder: (context, state) {
                return ListView(
                  controller: scrollController,
                  children: state.when(
                      initial: () => [
                            Center(
                              child: Text(
                                'Ваш список',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Wrap(
                                runSpacing: 15,
                                children: List.generate(
                                    titleList.length,
                                    (index) => ItemWidget(
                                        title: titleList[index],
                                        subtitle: subtitleList[index],
                                        listanable: listenableList[index],
                                        box: boxList[index])),
                              ),
                            )
                          ],
                      savedPlaces: (String title, String subtitle,
                          ValueListenable<Box<dynamic>> listanable, Box box) {
                        return [
                          HiveElementShow(
                            title: title,
                            subtitle: subtitle,
                            listanable: listanable,
                            box: box,
                            icon: Icons.location_pin,
                          )
                        ];
                      },
                      savedRoutes: (String title, String subtitle,
                          ValueListenable<Box<dynamic>> listanable, Box box) {
                        return [
                          HiveElementShow(
                            title: title,
                            subtitle: subtitle,
                            listanable: listanable,
                            box: box,
                            icon: Icons.bookmark,
                          )
                        ];
                      },
                      searchHistory: (String title, String subtitle,
                          ValueListenable<Box<dynamic>> listanable, Box box) {
                        return [
                          HiveElementShow(
                            title: title,
                            subtitle: subtitle,
                            listanable: listanable,
                            box: box,
                            icon: Icons.search,
                          )
                        ];
                      }),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
