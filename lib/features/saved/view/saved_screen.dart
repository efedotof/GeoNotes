import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';

@RoutePage()
class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: ListView(
              controller: scrollController,
              children: [
                Center(
                  child: Text(
                    'Ваш список',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Wrap(
                    runSpacing: 15,
                    children: [
                      Card(
                        child: ListTile(
                          title: Text('Сохраненные места',
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text('Список сохраненных мест',
                              style: Theme.of(context).textTheme.titleSmall),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () => context.read<SavedCubit>().showInnerSheet(
                              context: context,
                              title: 'Сохраненные места',
                              subtitle:
                                  'Здесь отображаются ваши сохранённые места',
                              box: context
                                  .read<SavedCubit>()
                                  .storeinterface
                                  .listBox,
                              listanable: context
                                  .read<SavedCubit>()
                                  .storeinterface
                                  .listenableListBox),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Сохраненные маршруты',
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text('Список сохраненных маршрутов',
                              style: Theme.of(context).textTheme.titleSmall),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () => context
                              .read<SavedCubit>()
                              .showInnerSheet(
                                context: context,
                                title: 'Сохраненные маршруты',
                                subtitle: 'Здесь отображаются ваши маршруты',
                                box: context
                                    .read<SavedCubit>()
                                    .storeinterface
                                    .routeModel,
                                listanable: context
                                    .read<SavedCubit>()
                                    .storeinterface
                                    .listenableRouteModel,
                              ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('История поиска',
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text('Список запросов поиска',
                              style: Theme.of(context).textTheme.titleSmall),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () => context.read<SavedCubit>().showInnerSheet(
                              context: context,
                              title: 'История поиска',
                              subtitle:
                                  'Здесь отображаются последние поисковые запросы',
                              box: context
                                  .read<SavedCubit>()
                                  .storeinterface
                                  .locationModel,
                              listanable: context
                                  .read<SavedCubit>()
                                  .storeinterface
                                  .listenableLocationModel),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
