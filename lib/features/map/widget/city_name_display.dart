import 'package:flutter/material.dart';

class CityNameDisplay extends StatefulWidget {
  final String cityName;

  const CityNameDisplay({super.key, required this.cityName});

  @override
  State<CityNameDisplay> createState() => _CityNameDisplayState();
}

class _CityNameDisplayState extends State<CityNameDisplay> {
  double _width = 50;

  @override
  void didUpdateWidget(covariant CityNameDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cityName != widget.cityName) {
      _updateWidth();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateWidth();
  }

  void _updateWidth() {
    final textSpan = TextSpan(
      text: widget.cityName,
      style: const TextStyle(fontSize: 16),
    );
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();

    final maxWidth = MediaQuery.of(context).size.width * 0.8;
    final calculatedWidth = textPainter.size.width + 24;

    setState(() {
      _width = calculatedWidth.clamp(50, maxWidth);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.06,
      right: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: _width,
        height: 30,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(
          color: Color(0xFFF2ECEC),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Text(
          widget.cityName,
          style: const TextStyle(fontSize: 16, color: Colors.black),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}
