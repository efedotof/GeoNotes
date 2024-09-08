part of 'searche_cubit.dart';

abstract class SearcheState extends Equatable {
  const SearcheState();

  @override
  List<Object> get props => [];
}

class SearcheInitial extends SearcheState {}

class SearcheLoading extends SearcheState {}

class SearcheSuccess extends SearcheState {
  final List<Location> locations;

  const SearcheSuccess({required this.locations});

  @override
  List<Object> get props => [locations];
}

class SearcheError extends SearcheState {
  final String message;

  const SearcheError(this.message);

  @override
  List<Object> get props => [message];
}
