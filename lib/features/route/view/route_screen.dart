import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/route/cubit/route/route_cubit.dart';
import 'package:geo_notes/features/route/widget/widget.dart';

@RoutePage()
class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen>
    with TickerProviderStateMixin {
  final ValueNotifier<String> selectedTransport = ValueNotifier<String>('walk');

  final List<_TransportOption> options = [
    _TransportOption('routed-foot', Icons.directions_walk),
    _TransportOption('routed-car', Icons.directions_car),
    _TransportOption('routed-bike', Icons.pedal_bike),
  ];

  @override
  void dispose() {
    selectedTransport.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            color: Color(0xFFF7F6F2),
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Построение маршрута',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              ValueListenableBuilder<String>(
                valueListenable: selectedTransport,
                builder: (context, value, _) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: options.map((option) {
                        final isSelected = value == option.key;
                        return Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: GestureDetector(
                            onTap: () {
                              if (!isSelected) {
                                selectedTransport.value = option.key;
                              }
                            },
                            child: BlocBuilder<RouteCubit, RouteState>(
                              builder: (context, routeState) {
                                return TransportOption(
                                  key: ValueKey(option.key),
                                  isSelected: isSelected,
                                  icon: option.icon,
                                  duration: isSelected
                                      ? routeState.maybeWhen(
                                          loaded: (route) =>
                                              route.routes[0].duration,
                                          orElse: () => null,
                                        )
                                      : null,
                                  distance: isSelected
                                      ? routeState.maybeWhen(
                                          loaded: (route) =>
                                              route.routes[0].distance,
                                          orElse: () => null,
                                        )
                                      : null,
                                );
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const LocationWidgetStart(),
              const SizedBox(height: 12),
              const LocationWidgetEnd(),
              const SizedBox(height: 24),
              ValueListenableBuilder<String>(
                valueListenable: selectedTransport,
                builder: (context, transportType, _) {
                  return RouteButton(type: transportType);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TransportOption {
  final String key;
  final IconData icon;

  _TransportOption(this.key, this.icon);
}
