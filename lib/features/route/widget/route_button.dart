import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/cubit/map/map_cubit.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/route/cubit/selected_item/selected_item_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';
import 'package:geo_notes/map_repository/models/location_model/location_model.dart';
import 'package:geo_notes/map_repository/models/route_model/route_model.dart';

class RouteButton extends StatefulWidget {
  const RouteButton({super.key, required this.type});
  final String type;

  @override
  State<RouteButton> createState() => _RouteButtonState();
}

class _RouteButtonState extends State<RouteButton> {
  bool isStart = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedItemCubit, SelectedItemState>(
      builder: (context, state) {
        final CityModel? end = state.endRoute;
        final location = context.read<MapCubit>().mapInterface.location;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: isStart
                  ? MediaQuery.of(context).size.width * 0.45
                  : MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  if (location != null && end != null) {
                    context.read<RouteCubit>().fetchRoute(
                          startLat: location.latitude,
                          startLon: location.longitude,
                          endLat: end.idx,
                          endLon: end.idy,
                          type: widget.type,
                        );
                    setState(() => isStart = true);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Text(
                  'Начать',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            if (isStart) ...[
              BlocBuilder<RouteCubit, RouteState>(
                builder: (context, routeState) {
                  return GestureDetector(
                    onTap: () {
                      setState(() => isSaved = !isSaved);
                      if (isSaved) {
                        routeState.maybeMap(
                          loaded: (data) {
                            context
                                .read<SavedCubit>()
                                .storeinterface
                                .addRouteModel(
                                  item: RouteModel(
                                    code: data.route.code,
                                    routes: data.route.routes,
                                    waypoints: data.route.waypoints,
                                    displayName: end!.name,
                                    location: LocationModel(
                                        displayName: end.name,
                                        latitude: end.idx,
                                        longitude: end.idy),
                                  ),
                                );
                          },
                          orElse: () {},
                        );
                      } else {
                        // context.read<SavedCubit>().storeinterface.deleteRouteBox(index);
                      }
                    },
                    child: Container(
                      key: ValueKey(isSaved),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                              scale: animation, child: child);
                        },
                        child: Icon(
                          isSaved ? Icons.bookmark_added : Icons.book_outlined,
                          color: isSaved ? Colors.red : const Color(0xFF232425),
                          key: ValueKey<bool>(isSaved),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStart = false;
                    isSaved = false;
                  });
                  context.read<RouteCubit>().clean();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: const Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                ),
              ),
            ]
          ],
        );
      },
    );
  }
}
