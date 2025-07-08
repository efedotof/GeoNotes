import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';

class CloseRouteAndMarker extends StatelessWidget {
  const CloseRouteAndMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.06,
      left: 10,
      child: BlocBuilder<MapCubit, MapState>(
        builder: (context, mapState) {
          return BlocBuilder<RouteCubit, RouteState>(
            builder: (context, routeState) {
              return GestureDetector(
                onTap: () {
                  mapState.maybeMap(mapMarkerAdded: (value) {
                    routeState.maybeMap(loaded: (value) {
                      context.read<RouteCubit>().clean();
                      context.read<MapCubit>().clean();
                    }, orElse: () {
                      context.read<MapCubit>().clean();
                    });
                  }, orElse: () {
                    routeState.maybeMap(loaded: (value) {
                      context.read<RouteCubit>().clean();
                    }, orElse: () {
                      context.read<MapCubit>().clean();
                    });
                  });
                },
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    height: 30,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2ECEC),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: const Icon(Icons.close, color: Colors.red)),
              );
            },
          );
        },
      ),
    );
  }
}
