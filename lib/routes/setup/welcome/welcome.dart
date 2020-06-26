// 🐦 Flutter imports:
import 'package:auralite/routes/setup/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SetupWelcomeRoute extends StatelessWidget {
  static const routeName = '/setup/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimationLimiter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(
                milliseconds: 800,
              ),
              childAnimationBuilder: (Widget widget) => SlideAnimation(
                horizontalOffset: -100,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
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
                  elevation: 10,
                  highlightElevation: 15,
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    return Navigator.popAndPushNamed(
                      context,
                      SetupLoginRoute.routeName,
                    );
                  },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
