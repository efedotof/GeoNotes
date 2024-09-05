import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:geo_notes/features/map/map.dart';
import 'package:geo_notes/route/app_route.dart';

@RoutePage()
class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 2,
      routes: const [
        SearchRoute(),
        RouteRoute(),
        SavedRoute(),
        SettingRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, childs) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Stack(children: [
            const MapScreen(),
            Positioned(
              bottom: 0,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: childs),
            )
          ]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              if (tabsRouter.activeIndex == 2) {}
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(
                  Icons.search,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Route',
                icon: Icon(
                  Icons.route,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Saved',
                icon: Icon(
                  Icons.book_outlined,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.person_outline,
                  color: Color(0xFF232425),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
