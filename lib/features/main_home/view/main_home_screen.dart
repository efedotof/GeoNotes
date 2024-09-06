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
      // Устанавливаем начальный индекс на MapRoute (индекс 2)
      homeIndex: 2,
      routes: const [
        SearchRoute(),
        RouteRoute(),
        MapRoute(),
        SavedRoute(),
        SettingRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Stack(
            children: [
              // MapScreen всегда на фоне
              const Positioned.fill(
                child: MapScreen(),
              ),
              // Остальные экраны поверх MapScreen
              if (tabsRouter.activeIndex != 2) // Показываем только если активен не MapRoute
                Positioned.fill(
                  child: child,
                ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex, // Выделяем текущую вкладку
            onTap: (index) {
              tabsRouter.setActiveIndex(index); // Переключаем на выбранную вкладку
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
                label: 'Map',
                icon: Icon(
                  Icons.map_outlined,
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
                label: 'Setting',
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
