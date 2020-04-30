import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget btnChild;
  final Color btnColor;
  final double btnBorderRadius;
  final VoidCallback btnOnPressed;
  final double btnHeight;

  const CustomRaisedButton({
    this.btnChild,
    this.btnColor,
    this.btnBorderRadius = 2.0,
    this.btnOnPressed,
    this.btnHeight = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight,
      child: RaisedButton(
        onPressed: btnOnPressed,
        color: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(btnBorderRadius),
          ),
        ),
        child: btnChild,
        // ListTile(
        //   leading: Icon(Icons.g_translate),
        //   title: Text(
        //     'some text',
        //     style: TextStyle(
        //       color: Colors.black87,
        //       fontSize: 20.0,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
