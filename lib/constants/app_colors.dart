import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class

  static const Map<int, Color> purple = <int, Color>{
    50: Color(0xFFD0C3FD),
    100: Color(0xFFC0AFFD),
    200: Color(0xFFB19CFC),
    300: Color(0xFFA188FC),
    400: Color(0xFF9174FB),
    500: Color(0xFF7B57FB),
    600: Color(0xFF724CFA),
    700: Color(0xFF6238FA),
    800: Color(0xFF5224F9),
    900: Color(0xFF4310F9),
  };

  static const Color mainBackground = Color(0xFF121212);
  static const Color primary = Color(0xFF8687E7);
  static const Color primary50 = Color(0xFF4C4C7C);

  static const Color white = Color(0xFFFFFFFF);
  static const Color gray = Color(0xFF7A7A7A);
  static const Color red = Color(0xFFFF4949);
}
