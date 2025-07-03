import 'package:flutter/material.dart';

class TransportOption extends StatelessWidget {
  const TransportOption({
    super.key,
    required this.isSelected,
    required this.icon,
  });

  final bool isSelected;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final width = isSelected
        ? MediaQuery.of(context).size.width * 0.5
        : MediaQuery.of(context).size.width * 0.1;

    final height = MediaQuery.of(context).size.height * 0.09;

    return AnimatedContainer(
      width: width,
      height: height,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(14),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(0.2, 0), end: Offset.zero)
                      .animate(animation),
              child: child,
            ),
          );
        },
        child: isSelected
            ? Padding(
                key: const ValueKey('selected'),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Icon(icon, size: 32),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 hr, 05 min',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '6 km',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                key: const ValueKey('unselected'),
                child: Icon(icon, size: 28),
              ),
      ),
    );
  }
}
