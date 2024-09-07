import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8, 
      minChildSize: 0.1,      
      maxChildSize: 0.8,      
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14), 
              topLeft: Radius.circular(14)
            ),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.cancel, color: Colors.grey),
                      onPressed: () {
        
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              ListTile(
                title: const Text('Hotel Couture', style: TextStyle(color: Colors.black)),
                subtitle: const Text('XO Hotels | T, 1062 EA Amsterdam', style: TextStyle(color: Colors.grey)),
                trailing: const Text('2 km', style: TextStyle(color: Colors.black)),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text('Italian Restaurant', style: TextStyle(color: Colors.black)),
                subtitle: const Text('Cet C, 60-62, 1072 Amsterdam, The Netherlands', style: TextStyle(color: Colors.grey)),
                trailing: const Text('4 km', style: TextStyle(color: Colors.black)),
                onTap: () {

                },
              ),
              ListTile(
                title: const Text(
                  'Clear search history',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87),
                ),
                onTap: () {
    
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
