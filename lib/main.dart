// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:auralite/routes/home/home.dart';
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
      initialRoute: HomeRoute.routeName,
      routes: {
        HomeRoute.routeName: (BuildContext ctx) => HomeRoute(),
      },
    );
  }
}
