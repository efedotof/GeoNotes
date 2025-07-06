// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

/// generated route for
/// [AboutScreen]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
    : super(AboutRoute.name, initialChildren: children);

  static const String name = 'AboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AboutScreen();
    },
  );
}

/// generated route for
/// [CreateMarkerScreen]
class CreateMarkerRoute extends PageRouteInfo<void> {
  const CreateMarkerRoute({List<PageRouteInfo>? children})
    : super(CreateMarkerRoute.name, initialChildren: children);

  static const String name = 'CreateMarkerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateMarkerScreen();
    },
  );
}

/// generated route for
/// [MainHomeScreen]
class MainHomeRoute extends PageRouteInfo<void> {
  const MainHomeRoute({List<PageRouteInfo>? children})
    : super(MainHomeRoute.name, initialChildren: children);

  static const String name = 'MainHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainHomeScreen();
    },
  );
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
    : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapScreen();
    },
  );
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [PageOneScreen]
class RouteOneRoute extends PageRouteInfo<void> {
  const RouteOneRoute({List<PageRouteInfo>? children})
    : super(RouteOneRoute.name, initialChildren: children);

  static const String name = 'RouteOneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PageOneScreen();
    },
  );
}

/// generated route for
/// [PageThreeScreen]
class RouteThreeRoute extends PageRouteInfo<void> {
  const RouteThreeRoute({List<PageRouteInfo>? children})
    : super(RouteThreeRoute.name, initialChildren: children);

  static const String name = 'RouteThreeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PageThreeScreen();
    },
  );
}

/// generated route for
/// [PageTwoScreen]
class RouteTwoRoute extends PageRouteInfo<void> {
  const RouteTwoRoute({List<PageRouteInfo>? children})
    : super(RouteTwoRoute.name, initialChildren: children);

  static const String name = 'RouteTwoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PageTwoScreen();
    },
  );
}

/// generated route for
/// [RouteScreen]
class RouteRoute extends PageRouteInfo<void> {
  const RouteRoute({List<PageRouteInfo>? children})
    : super(RouteRoute.name, initialChildren: children);

  static const String name = 'RouteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RouteScreen();
    },
  );
}

/// generated route for
/// [SavedScreen]
class SavedRoute extends PageRouteInfo<void> {
  const SavedRoute({List<PageRouteInfo>? children})
    : super(SavedRoute.name, initialChildren: children);

  static const String name = 'SavedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SavedScreen();
    },
  );
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({Key? key, bool? isRouting, List<PageRouteInfo>? children})
    : super(
        SearchRoute.name,
        args: SearchRouteArgs(key: key, isRouting: isRouting),
        initialChildren: children,
      );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>(
        orElse: () => const SearchRouteArgs(),
      );
      return SearchScreen(key: args.key, isRouting: args.isRouting);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, this.isRouting});

  final Key? key;

  final bool? isRouting;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, isRouting: $isRouting}';
  }
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
