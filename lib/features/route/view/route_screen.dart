<<<<<<< HEAD

=======
>>>>>>> 7004069dcc966194bb1c81015e376a046fa04b45
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

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
              children: const [
                Center(child: Text('Route')),
<<<<<<< HEAD
                // Добавьте другие виджеты по необходимости
=======
>>>>>>> 7004069dcc966194bb1c81015e376a046fa04b45
              ],
            ),
          ),
        );
      },
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> 2b05aa3260d4acb858d542f827af24c877766ba5
>>>>>>> 7004069dcc966194bb1c81015e376a046fa04b45
