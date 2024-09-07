import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,  // Adjusted to the height you may want
      minChildSize: 0.1,      // Minimum drag extent
      maxChildSize: 0.8,      // Maximum drag extent
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
              color: Color(0xFFF7F6F2), // Off-white background color
            ),
            child: ListView(
              controller: scrollController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Column(
                    children: [
                    
                      const SizedBox(height: 8),
                      // Title and icons row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.09,
                         
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(14)
                            ),
                            child: const Center(
                              child: ListTile(
                                leading: Icon(Icons.directions_walk, color: Colors.grey),
                                title: Text(
                                '1 hr, 05 min',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                
                              ),
                              subtitle:  Text(
                                '6 km',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
                              
                              )),
                            ),
                          ),
                          const Wrap(
                            spacing: 14,
                            children: [
                              Icon(Icons.directions_car, color: Colors.grey),
                              Icon(Icons.train, color: Colors.grey),
                              Icon(Icons.directions_walk, color: Colors.grey),
                              Icon(Icons.pedal_bike, color: Colors.grey),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Locations
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(14)
                        ),
                        child: ListTile(
                          tileColor:Colors.grey[200],
                          leading: Icon(Icons.location_pin, color: Theme.of(context).primaryColor),
                          title: const Text('My location'),
                          trailing:const Text(
                                'Map',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
                              
                             
                          ),
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                         decoration: BoxDecoration(
                          color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(14)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.restaurant, color: Theme.of(context).primaryColor),
                          title: const Text("Restaurant Zaza's"),
                          trailing:  const Text(
                                'Map',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
                              
                             
                          ),
                          onTap: () {}, 
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Start', style: TextStyle (color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF102930),
                          minimumSize: const Size.fromHeight(50), // Button height
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
