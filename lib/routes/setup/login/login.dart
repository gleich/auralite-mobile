// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import 'package:auralite/widgets/app_bar.dart';

class SetupLoginRoute extends StatelessWidget {
  static const routeName = '/setup/login';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String username, password;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: AuraliteAppBarTitle(
            text: 'Login',
          ),
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
                    if (!text.contains('@')) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => username = newValue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 60,
                ),
                child: Container(
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
                    onSaved: (newValue) => password = newValue,
                    obscureText: true,
                  ),
                ),
              ),
              RaisedButton(
                elevation: 10,
                highlightElevation: 15,
                onPressed: () {
                  HapticFeedback.lightImpact();
                  final form = _formKey.currentState;
                  if (form.validate()) {
                    form.save();
                  }
                  print(username);
                  print(password);
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
