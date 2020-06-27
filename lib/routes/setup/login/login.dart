// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:auralite/widgets/app_bar.dart';

class SetupLoginRoute extends StatelessWidget {
  static const routeName = '/setup/login';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _username;
    return Scaffold(
      appBar: AppBar(
        title: AuraliteAppBarTitle(
          text: 'Login',
        ),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 290,
                child: TextFormField(
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  onSaved: (newValue) => _username = newValue,
                ),
              ),
              const SizedBox(height: 60),
              Container(
                width: 290,
                child: TextFormField(
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => _username = newValue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
