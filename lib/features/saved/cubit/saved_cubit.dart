import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_notes/map_repository/models/models.dart';
import 'package:geo_notes/store/repository/store_interface.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
part 'saved_state.dart';
part 'saved_cubit.freezed.dart';

class SavedCubit extends Cubit<SavedState> {
  SavedCubit({required this.storeinterface}) : super(SavedState.initial());

  final StoreInterface storeinterface;

  void cancel() {
    emit(SavedState.initial());
  }

  void openNewScreen({
    required String title,
    required String subtitle,
    required ValueListenable<Box<dynamic>> listanable,
    required Box box,
  }) {
    final firstItem = box.isNotEmpty ? box.getAt(0) : null;

    if (firstItem is LocationModel) {
      debugPrint("это LocationModel");
      emit(SavedState.searchHistory(
        title: title,
        subtitle: subtitle,
        listanable: listanable,
        box: box,
      ));
    } else if (firstItem is RouteModel) {
      debugPrint("это RouteModel");
      emit(SavedState.savedRoutes(
        title: title,
        subtitle: subtitle,
        listanable: listanable,
        box: box,
      ));
    } else {
      debugPrint("это listBox");
      emit(SavedState.savedPlaces(
        title: title,
        subtitle: subtitle,
        listanable: listanable,
        box: box,
      ));
    }
  }
}
