import 'package:flutter/material.dart';

class CityNameDisplay extends StatelessWidget {
  final String cityName;

  const CityNameDisplay({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.06,
      right: 10,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 30,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xFFF2ECEC),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Text(
          cityName,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
