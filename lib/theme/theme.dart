import 'package:flutter/material.dart';



final dartTheme = ThemeData(
  //  dartTheme
);

final lightTheme = ThemeData(
   scaffoldBackgroundColor: const Color(0xFFF2EDED),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    
    backgroundColor: Color(0xFFF2EDED),
    selectedIconTheme: IconThemeData(
      color: Color(0xFF0F141A),

    ),
    unselectedIconTheme: IconThemeData(
      color: Color(0xFF0F141A),
    ),
    selectedItemColor: Color(0xFF454648)
  ),

  cardTheme: const CardTheme(
    color: Color(0xFFEFEEEA),
  ),
   textTheme: const TextTheme(
    titleMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    titleSmall:  TextStyle(color: Colors.grey),
    titleLarge: TextStyle (color: Colors.white),
  ),

  iconTheme: const IconThemeData(
    color: Color(0xFF72777F),
  ),
  
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF102930),
      minimumSize: const Size.fromHeight(50), 
    )
  )
);
