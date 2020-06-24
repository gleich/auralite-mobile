// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World!',
        ),
      ),
    );
  }
}
