import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3, // Начальный размер (30% экрана)
      minChildSize: 0.1, // Минимальный размер (10% экрана)
      maxChildSize: 0.8, // Максимальный размер (80% экрана)
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
                'Setting',
                style: Theme.of(context).textTheme.titleSmall,
              )),
              const SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Wrap(
                  runSpacing: 15,
                  children: [
                    Card(
                      child: ListTile(
                        title: const Text('Notification',),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.notifications_outlined),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: const Text('Clear'),
             
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.info,),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: const Text('Support'),
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
