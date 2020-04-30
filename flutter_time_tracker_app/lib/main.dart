import 'package:flutter/material.dart';

import './app/sign_in/sign_in_page.dart';
import './common-properties.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE_STRING,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),
    );
  }
}
