part of 'saved_cubit.dart';

@freezed
abstract class SavedState with _$SavedState {
  const factory SavedState.initial() = _Initial;
  const factory SavedState.savedPlaces(
      {required String title,
      required String subtitle,
      required ValueListenable<Box<dynamic>> listanable,
      required Box box}) = _SavedPlaces;
  const factory SavedState.savedRoutes(
      {required String title,
      required String subtitle,
      required ValueListenable<Box<dynamic>> listanable,
      required Box box}) = _SavedRoutes;
  const factory SavedState.searchHistory(
      {required String title,
      required String subtitle,
      required ValueListenable<Box<dynamic>> listanable,
      required Box box}) = _SearchHistroy;
}
