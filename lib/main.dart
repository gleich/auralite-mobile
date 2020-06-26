// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:auralite/routes/setup/login/login.dart';
import 'package:auralite/routes/setup/welcome/welcome.dart';
import 'package:auralite/themes.dart';

void main() => runApp(_Auralite());

class _Auralite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auralite',
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      initialRoute: SetupWelcomeRoute.routeName,
      // themeMode: ThemeMode.light,
      routes: {
        SetupWelcomeRoute.routeName: (BuildContext ctx) => SetupWelcomeRoute(),
        SetupLoginRoute.routeName: (BuildContext ctx) => SetupLoginRoute(),
      },
    );
  }
}
