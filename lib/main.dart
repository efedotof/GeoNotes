import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/view/create_marker/cubit/create_marker_cubit.dart';
import 'package:geo_notes/features/route/cubit/distance_and_time/distance_and_time_cubit.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:hive_ce/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/map/cubit/marker/marker_cubit.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';
import 'package:geo_notes/features/splash/cubit/splash_cubit.dart';
import 'package:geo_notes/map_repository/map/map_repository.dart';
import 'package:geo_notes/map_repository/marker/marker_repository.dart';
import 'package:geo_notes/map_repository/search/search_repository.dart';
import 'package:geo_notes/map_repository/routing/routing_repository.dart';
import 'package:geo_notes/Theme/cubit/theme_cubit.dart';
import 'package:geo_notes/Theme/theme.dart';
import 'features/saved/cubit/saved_cubit.dart';
import 'route/app_route.dart';
import 'store/repository/store_repository.dart';
import 'theme/repositories/theme_repository.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  final storeRepository = StoreRepository();
  await storeRepository.init();
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
            create: (context) =>
                CreateMarkerCubit(storeInterface: storeRepository)),
        BlocProvider(create: (context) => SelectedItemCubit()),
        BlocProvider(create: (context) => DistanceAndTimeCubit()),
        BlocProvider(
            create: (context) => SavedCubit(storeinterface: storeRepository)),
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
