import 'package:auto_route/auto_route.dart';
import 'package:geo_notes/features/home/home.dart';
import 'package:geo_notes/features/main_home/main_home.dart';
import 'package:geo_notes/features/map/map.dart';
import 'package:geo_notes/features/onboarding/onboarding.dart';
import 'package:geo_notes/features/onboarding/view/page1/page_one.dart';
import 'package:geo_notes/features/onboarding/view/page2/page_two.dart';
import 'package:geo_notes/features/onboarding/view/page3/page_three.dart';
import 'package:geo_notes/features/route/route.dart';
import 'package:geo_notes/features/saved/saved.dart';
import 'package:geo_notes/features/search/search.dart';
import 'package:geo_notes/features/setting/setting.dart';
import 'package:geo_notes/features/splash/splash.dart';

part 'app_route.gr.dart';


@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: '/'),

    AutoRoute(
      page: OnboardingRoute.page,
      path: '/onboarding',
      children: [
        AutoRoute(page: RouteOneRoute.page, path: 'page_one'),
        AutoRoute(page: RouteTwoRoute.page, path: 'page_two'),
        AutoRoute(page: RouteThreeRoute.page, path: 'page_three'),
      ]
    ),

    AutoRoute(
      page: MainHomeRoute.page,
      path: '/main_home',
      children: [
        AutoRoute(page: MapRoute.page, path: 'map'),
        AutoRoute(page: SearchRoute.page, path: 'search'),
        AutoRoute(page: RouteRoute.page, path: 'route'),
       
        AutoRoute(page: SavedRoute.page, path: 'saved'),
        AutoRoute(page: SettingRoute.page, path: 'setting'),
      ]
    ),

    


 ];
}