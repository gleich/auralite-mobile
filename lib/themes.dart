// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  // Shared constant values
  static const _primaryColor = Color.fromRGBO(104, 117, 245, 1);
  static const _fontFamily = 'Nunito Sans';

  // Shared dynamic values
  final _buttonTheme = ButtonThemeData(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    buttonColor: _primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Color.fromRGBO(24, 26, 27, 1),
        fontFamily: _fontFamily,
        buttonTheme: _buttonTheme,
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _primaryColor,
        fontFamily: _fontFamily,
        buttonTheme: _buttonTheme,
      );
}
