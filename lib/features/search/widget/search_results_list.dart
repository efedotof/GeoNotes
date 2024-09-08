import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/search/cubit/searche_cubit.dart';

import 'search_default_item.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearcheCubit, SearcheState>(
      builder: (context, state) {
        if (state is SearcheLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SearcheSuccess) {
          if (state.locations.isEmpty) {
            return const Center(
              child: Text('Ничего не найдено'),
            );
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.locations.length,
            itemBuilder: (context, index) {
              final location = state.locations[index];
              return Card(
                child: ListTile(
                  title: Text(
                    location.displayName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    location.displayName,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
               
                  },
                ),
              );
            },
          );
        } else if (state is SearcheError) {
          return const Center(
            child: Text('Ничего не найдено'),
          );
        }

        return const Column(
          children: [
            SearchDefaultItem(
              title: 'Hotel Couture',
              subtitle: 'XO Hotels | T, 1062 EA Amsterdam',
              distance: '2 km',
            ),
            SearchDefaultItem(
              title: 'Italian Restaurant',
              subtitle: 'Cet C, 60-62, 1072 Amsterdam, The Netherlands',
              distance: '4 km',
            ),
            ListTile(
              title: Text(
                'Clear search history',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              
            ),
          ],
        );
      },
    );
  }
}
