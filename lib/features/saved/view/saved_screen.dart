import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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
              children:  [
                Center(
                  child: Text('Your list', style: Theme.of(context).textTheme.titleSmall,),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Wrap(
                    runSpacing: 15,
                    children: [
                       Card(
                  child: ListTile(
                    title:  Text('Italian Restaurant', style: Theme.of(context).textTheme.titleMedium),
                    subtitle:  Text('Cet C, 60-62, 1072 Amsterdam, The Netherlands', style: Theme.of(context).textTheme.titleSmall),
                    trailing:  const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                  
                    },
                  ),
                                ),
                                 Card(
                  child: ListTile(
                    title:  Text('Italian Restaurant', style: Theme.of(context).textTheme.titleMedium),
                    subtitle:  Text('Cet C, 60-62, 1072 Amsterdam, The Netherlands', style: Theme.of(context).textTheme.titleSmall),
                    trailing:   const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                  
                    },
                  ),
                                ),
                                 Card(
                  child: ListTile(
                    title:  Text('Italian Restaurant', style: Theme.of(context).textTheme.titleMedium),
                    subtitle:  Text('Cet C, 60-62, 1072 Amsterdam, The Netherlands', style: Theme.of(context).textTheme.titleSmall),
                    trailing:   const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                  
                    },
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
