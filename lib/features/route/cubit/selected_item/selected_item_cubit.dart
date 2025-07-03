import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/city_model/city_model.dart';

part 'selected_item_state.dart';
part 'selected_item_cubit.freezed.dart';

class SelectedItemCubit extends Cubit<SelectedItemState> {
  SelectedItemCubit() : super(const SelectedItemState());

  void setStartRoute(CityModel start) {
    emit(state.copyWith(startRoute: start));
  }

  void setEndRoute(CityModel end) {
    emit(state.copyWith(endRoute: end));
  }

  CityModel? getStartRoute() => state.startRoute;
  CityModel? getEndRoute() => state.endRoute;
}
