import 'package:flutter/material.dart';
import 'package:notes_on_the_map/screens/Home.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFF836096),
          colorScheme: const ColorScheme.light().copyWith(
              primary: const Color(0xFFED7B7B),
              secondary: const Color(0xFFF0B86E))),
      initialRoute: '/',
      routes: {'/': (context) => const Home()},
      debugShowCheckedModeBanner: false,
    ));
