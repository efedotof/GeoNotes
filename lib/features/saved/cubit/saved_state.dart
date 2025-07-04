part of 'saved_cubit.dart';

@freezed
abstract class SavedState with _$SavedState {
  const factory SavedState.initial() = _Initial;
}
