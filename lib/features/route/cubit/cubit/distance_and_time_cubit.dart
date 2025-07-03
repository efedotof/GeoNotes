import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_and_time_state.dart';
part 'distance_and_time_cubit.freezed.dart';

class DistanceAndTimeCubit extends Cubit<DistanceAndTimeState> {
  DistanceAndTimeCubit() : super(DistanceAndTimeState.initial());
}
