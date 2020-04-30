import 'package:flutter/material.dart';

import '../../common-properties.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_TITLE_STRING),
        elevation: 2.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Text(
              SIGN_IN_STRING,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.g_translate),
                title: Text('Sign in with Google'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blue.shade900,
              child: ListTile(
                leading: Icon(Icons.face),
                title: Text('Sign in with Facebook'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green.shade900,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Sign in with Email'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
