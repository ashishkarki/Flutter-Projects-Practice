import 'package:flutter/material.dart';
import 'package:flutter_time_tracker_app/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          btnChild: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                child: Image.asset(assetName),
                // child widget will be completely transparent and hence hidden
                opacity: 0.0,
              ),
            ],
          ),
          btnColor: color,
          btnOnPressed: onPressed,
        );
}

// 'assets/images/google-logo.png' 'Sign in with Google'
