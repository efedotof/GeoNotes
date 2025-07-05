part of 'create_marker_cubit.dart';

@freezed
abstract class CreateMarkerState with _$CreateMarkerState {
  const factory CreateMarkerState(
      {required String title,
      required String description,
      required List<File> images,
      required String? errorMessage,
      required bool success}) = _CreateMarkerState;

  factory CreateMarkerState.initial() => const CreateMarkerState(
      title: '',
      description: '',
      images: [],
      errorMessage: null,
      success: false);
}
