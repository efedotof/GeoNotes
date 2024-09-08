import 'package:flutter/material.dart';

class SearchDefaultItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String distance;

  const SearchDefaultItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.titleSmall),
        trailing: Text(distance, style: Theme.of(context).textTheme.titleMedium),
        onTap: () {

        },
      ),
    );
  }
}
