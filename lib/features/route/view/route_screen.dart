import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return GestureDetector(
          onTap: () {
            AutoRouter.of(context).popUntilRoot();
          },
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(14)),
                            child: Center(
                              child: ListTile(
                                  leading: const Icon(Icons.directions_walk),
                                  title: Text(
                                    '1 hr, 05 min',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  subtitle: Text(
                                    '6 km',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  )),
                            ),
                          ),
                          const Wrap(
                            spacing: 14,
                            children: [
                              Icon(Icons.directions_car),
                              Icon(Icons.train),
                              Icon(Icons.directions_walk),
                              Icon(Icons.pedal_bike),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Locations
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.location_pin),
                          title: const Text('My location'),
                          trailing: const Text(
                            'Map',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.restaurant),
                          title: const Text("Restaurant Zaza's"),
                          trailing: const Text(
                            'Map',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Start',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
