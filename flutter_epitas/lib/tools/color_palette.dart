//Packages
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor primarySwatch = MaterialColor(
    0xFFE53012,
    <int, Color>{
      100: Color(0xFFF7C1B8),
      200: Color(0xFFF29889),
      300: Color(0xFFED6E59),
      400: Color(0xFFE8452A),
      500: Color(0xFFE53012),
      600: Color(0xFFCE2B10),
      700: Color(0xFFA0220D),
      800: Color(0xFF731809),
      900: Color(0xFF450E05),
    },
  );

  static const Color accentColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color buttonColor = Color.fromRGBO(178, 179, 183, 1);
  static const Color backgroundColor = Color.fromRGBO(30, 30, 30, 1);
}
