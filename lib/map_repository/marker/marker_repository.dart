import 'dart:async';

import 'package:flutter_compass/flutter_compass.dart';

import 'marker_interface.dart';

class MarkerRepository implements MarkerInterface {
  @override
  Stream<double> get compassHeadingStream =>
      FlutterCompass.events?.map((event) => event.heading ?? 0) ??
      Stream<double>.value(0);

  @override
  double calculateRotationStep({
    required double currentHeading,
    required double targetHeading,
  }) {
    final delta = (targetHeading - currentHeading).abs();
    if (delta < 1) return 0;
    return delta / 10 * (targetHeading > currentHeading ? 1 : -1);
  }
}
