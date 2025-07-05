import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:geo_notes/features/map/map.dart';
import 'package:geo_notes/route/app_route.dart';

@RoutePage()
class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: 2,
      routes: [
        SearchRoute(),
        RouteRoute(),
        MapRoute(),
        SavedRoute(),
        SettingRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
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
        );
      },
      transitionBuilder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Stack(
          children: [
            // Карта всегда на фоне
            const Positioned.fill(
              child: MapScreen(),
            ),
            // Если выбрана вкладка 2 (карта), показываем только карту без наложения
            if (tabsRouter.activeIndex != 2)
              Positioned.fill(
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
          ],
        );
      },
    );
  }
}
