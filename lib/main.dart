import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/cubit/marker_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Theme/cubit/theme_cubit.dart';
import 'Theme/repositories/theme_settings.dart';
import 'Theme/theme.dart';
import 'features/map/cubit/map_cubit.dart';
import 'route/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final prefs = await SharedPreferences.getInstance();
  final themeRepository = ThemeRepository(preferences: prefs);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ThemeCubit(interf: themeRepository),
      ),
      BlocProvider(create: (context) => MapCubit()),
       BlocProvider(create: (context) => MarkerCubit())
      
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: state.isDark ? dartTheme: lightTheme ,
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
