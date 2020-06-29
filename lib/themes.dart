// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  // Shared constant values
  static const _primaryColor = Color.fromRGBO(88, 80, 237, 1);
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
  AppBarTheme _appBarTheme(Color scaffoldBackgroundColor) => AppBarTheme(
        color: scaffoldBackgroundColor,
        elevation: 0,
      );
  TextTheme _textTheme(Color textColor) => TextTheme(
        headline4: TextStyle(
          color: textColor,
        ),
        button: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      );

  // Shared dark mode values:
  static const _darkScaffoldBackgroundColor = Color.fromRGBO(23, 23, 29, 1);

  // Shared light mode values:
  static const _lightScaffoldBackgroundColor = Colors.white;

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _primaryColor,
        accentColor: _primaryColor,
        textTheme: _textTheme(Colors.white),
        scaffoldBackgroundColor: _darkScaffoldBackgroundColor,
        fontFamily: _fontFamily,
        buttonTheme: _buttonTheme,
        appBarTheme: _appBarTheme(_darkScaffoldBackgroundColor),
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _primaryColor,
        textTheme: _textTheme(Colors.black),
        scaffoldBackgroundColor: _lightScaffoldBackgroundColor,
        fontFamily: _fontFamily,
        buttonTheme: _buttonTheme,
        appBarTheme: _appBarTheme(_lightScaffoldBackgroundColor),
      );
}
