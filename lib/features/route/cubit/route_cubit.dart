import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_state.dart';
part 'route_cubit.freezed.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit() : super(RouteState.initial());
}
