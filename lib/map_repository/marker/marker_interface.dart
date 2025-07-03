abstract interface class MarkerInterface {
  Stream<double> get compassHeadingStream;
  double calculateRotationStep({
    required double currentHeading,
    required double targetHeading,
  });
}
