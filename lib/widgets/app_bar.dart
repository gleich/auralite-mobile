import 'package:flutter/material.dart';

class AuraliteAppBarTitle extends StatelessWidget {
  final String text;

  AuraliteAppBarTitle({
    this.text = 'Auralite',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/logo.png',
          height: 50,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          '- $text',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
