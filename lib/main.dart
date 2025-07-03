import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/map/cubit/marker/marker_cubit.dart';
import 'package:geo_notes/features/route/cubit/route_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart'; // Проверь, может файл должен быть search_cubit.dart
import 'package:geo_notes/features/splash/cubit/splash_cubit.dart';
import 'package:geo_notes/map_repository/map/map_repository.dart';
import 'package:geo_notes/map_repository/marker/marker_repository.dart';
import 'package:geo_notes/map_repository/search/search_repository.dart';
import 'package:geo_notes/map_repository/routing/routing_repository.dart';
import 'package:geo_notes/Theme/cubit/theme_cubit.dart';
import 'package:geo_notes/Theme/theme.dart';
import 'route/app_route.dart';
import 'theme/repositories/theme_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final themeRepository = ThemeRepository(preferences: prefs);
  final mapRepository = MapRepository();
  await mapRepository.initializeMap();
  final markerRepository = MarkerRepository();
  final searchRepository = SearchRepository();
  final routingRepository = RoutingRepository();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(themeInterface: themeRepository),
        ),
        BlocProvider(
          create: (context) => MapCubit(mapInterface: mapRepository),
        ),
        BlocProvider(
          create: (context) => MarkerCubit(markerInterface: markerRepository),
        ),
        BlocProvider(
          create: (context) => SearcheCubit(searchInterface: searchRepository),
        ),
        BlocProvider(
          create: (context) => RouteCubit(routingInterface: routingRepository),
        ),
        BlocProvider(
          create: (context) => SplashCubit(),
        ),
      ],
      child: const GeoNotes(),
    ),
  );
}

class GeoNotes extends StatefulWidget {
  const GeoNotes({super.key});

  @override
  State<GeoNotes> createState() => _GeoNotesState();
}

class _GeoNotesState extends State<GeoNotes> with WidgetsBindingObserver {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: state.isDark ? dartTheme : lightTheme,
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
