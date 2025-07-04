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
      routes: [
        SearchRoute(),
        const RouteRoute(),
        const MapRoute(),
        const SavedRoute(),
        SettingRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Stack(
            children: [
              const Positioned.fill(
                child: MapScreen(),
              ),
              if (tabsRouter.activeIndex != 2)
                Positioned.fill(
                  child: child,
                ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Поиск',
                icon: Icon(
                  Icons.search,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Навигация',
                icon: Icon(
                  Icons.route,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Карта',
                icon: Icon(
                  Icons.map_outlined,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Сохраненные',
                icon: Icon(
                  Icons.book_outlined,
                  color: Color(0xFF232425),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Настройки',
                icon: Icon(
                  Icons.settings,
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
