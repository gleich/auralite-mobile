// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  // Shared values
  static const _primaryColor = Color.fromRGBO(104, 117, 245, 1);
  static const _fontFamily = 'Nunito Sans';

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Color.fromRGBO(24, 26, 27, 1),
        fontFamily: _fontFamily,
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _primaryColor,
        fontFamily: _fontFamily,
      );
}
