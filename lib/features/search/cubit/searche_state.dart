part of 'searche_cubit.dart';

@freezed
class SearcheState with _$SearcheState {
  const factory SearcheState.initial() = _Initial;
  const factory SearcheState.searcheLoading() = _SearcheLoading;
  const factory SearcheState.searcheSuccess(
      {required List<LocationModel> locations}) = _SearcheSuccess;
  const factory SearcheState.searcheError({required String message}) =
      _SearcheError;
  const factory SearcheState.searcheEmpty({required String text}) =
      _SearcheEmpty;
}
