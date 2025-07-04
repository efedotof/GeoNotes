import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(14), topLeft: Radius.circular(14)),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            children: [
              Center(
                  child: Text(
                'Настройки приложения',
                style: Theme.of(context).textTheme.titleSmall,
              )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Wrap(
                  runSpacing: 15,
                  children: [
                    Card(
                      child: ListTile(
                        title: const Text('Очистить все данные приложения'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(
                          Icons.info,
                        ),
                        onTap: () => context
                            .read<SavedCubit>()
                            .storeinterface
                            .clearAll(),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: const Text('Помощь'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.support),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
