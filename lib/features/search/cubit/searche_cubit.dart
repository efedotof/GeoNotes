import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'searche_state.dart';

class SearcheCubit extends Cubit<SearcheState> {
  SearcheCubit() : super(SearcheInitial());

  Future<void> searchLocation(String query) async {
    if (query.isEmpty) {
      emit(SearcheInitial());
      return;
    }

    emit(SearcheLoading());
    try {
      final response = await http.get(
        Uri.parse('https://nominatim.openstreetmap.org/search?q=$query&format=json'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data.isNotEmpty) {
          // Собираем список результатов поиска
          final locations = data.map<Location>((item) => Location.fromJson(item)).toList();
          emit(SearcheSuccess(locations: locations));
        } else {
          emit(const SearcheError('No results found'));
        }
      } else {
        emit(const SearcheError('Failed to load search results'));
      }
    } catch (e) {
      emit(SearcheError('Error: ${e.toString()}'));
    }
  }

  void clearSearch() {
    emit(SearcheInitial());
  }
}

class Location {
  final String displayName;

  Location({required this.displayName});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      displayName: json['display_name'] ?? 'Unnamed location',
    );
  }
}
