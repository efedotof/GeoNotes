import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'searche_state.dart';

class SearcheCubit extends Cubit<SearcheState> {
  SearcheCubit() : super(SearcheInitial());
}
