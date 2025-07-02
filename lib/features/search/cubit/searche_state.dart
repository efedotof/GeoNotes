part of 'searche_cubit.dart';

@freezed
class SearcheState with _$SearcheState {
  const factory SearcheState.initial() = _Initial;
  const factory SearcheState.searcheLoading() = _SearcheLoading;
  const factory SearcheState.searcheSuccess(
      {required List<Location> locations}) = _SearcheSuccess;
  const factory SearcheState.searcheError(String message) = _SearcheError;
}
