import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';

class SearchFieldInput extends StatelessWidget {
  const SearchFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              searchController.clear();
              context.read<SearcheCubit>().clearSearch();
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        onChanged: (value) {
          if (value.isEmpty) {
            context.read<SearcheCubit>().clearSearch();
          } else {
            context.read<SearcheCubit>().searchLocations(query: value);
          }
        },
      ),
    );
  }
}
