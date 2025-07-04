import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_and_time_state.dart';
part 'distance_and_time_cubit.freezed.dart';

class DistanceAndTimeCubit extends Cubit<DistanceAndTimeState> {
  DistanceAndTimeCubit() : super(DistanceAndTimeState.initial());

  String formatDuration(double seconds) {
    final int totalMinutes = (seconds ~/ 60);
    final int hours = totalMinutes ~/ 60;
    final int minutes = totalMinutes % 60;

    if (hours > 0 && minutes > 0) {
      return "$hours часов $minutes минут";
    } else if (hours > 0) {
      return "$hours часов";
    } else {
      return "$minutes минут";
    }
  }

  String formatDistance(double meters) {
    final km = meters / 1000;
    return "${km.toStringAsFixed(1)}  км";
  }
}
