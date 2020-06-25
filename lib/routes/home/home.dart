// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
// import 'package:flutter_svg/svg.dart';

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
                fontSize: 40,
              ),
            ),
            const Text(
              'to the future',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
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
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 40,
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
