import 'package:flutter/material.dart';
import 'package:flutter_time_tracker_app/app/sign_in/sign_in_button.dart';

import '../../common_widgets/custom_raised_button.dart';
import '../../common-properties.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(APP_TITLE_STRING),
        elevation: 2.0,
      ),
      body: _buildBodyContent(),
    );
  }

  Widget _buildBodyContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            SIGN_IN_STRING,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          SignInButton(
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Sign in with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.white,
            color: Colors.teal.shade700,
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Colors.black,
            color: Colors.lime.shade300,
            onPressed: () {},
          ),
          /*
          Container(
            // margin: const EdgeInsets.symmetric(
            //   horizontal: 20.0,
            //   vertical: 5.0,
            // ),
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
          ),*/
        ],
      ),
    );
  }
}
