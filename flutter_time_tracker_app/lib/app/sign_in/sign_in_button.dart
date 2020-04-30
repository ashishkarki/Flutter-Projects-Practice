import 'package:flutter/material.dart';

import '../../common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          btnChild: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          btnColor: color,
          btnOnPressed: onPressed,
          btnBorderRadius: 8.0,
          btnHeight: 50.0,
        );
}
