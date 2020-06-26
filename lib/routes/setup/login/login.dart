import 'package:auralite/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SetupLoginRoute extends StatelessWidget {
  static const routeName = '/setup/login';

  final _formKey = GlobalKey<FormState>();
  String username;

  @override
  Widget build(BuildContext context) {
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
                      return 'Please enter some text';
                    }
                    if (!text.contains('@')) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'example@example.com',
                    labelText: 'Username/Email',
                    focusColor: Theme.of(context).primaryColor,
                    fillColor: Theme.of(context).primaryColor,
                    hoverColor: Theme.of(context).primaryColor,
                    filled: true,
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => {
                    username = newValue,
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
