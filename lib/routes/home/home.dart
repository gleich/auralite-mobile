// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 45,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'to the ',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text(
                  'future',
                  style: TextStyle(
                    fontSize: 50,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationColor: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
              highlightColor: Colors.transparent,
              elevation: 10,
              highlightElevation: 15,
              splashColor: Colors.transparent,
              onPressed: () => print('Pressed the button!'),
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
