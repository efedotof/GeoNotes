part of 'selected_item_cubit.dart';

@freezed
abstract class SelectedItemState with _$SelectedItemState {
  const factory SelectedItemState({
    CityModel? startRoute,
    CityModel? endRoute,
  }) = _SelectedItemState;
}
