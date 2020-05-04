import 'package:flutter/material.dart';

import '../common_values.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String btnText;
  final double radius;
  final Function onPressed;

  const TwoSideRoundedButton({
    Key key,
    this.btnText,
    this.radius = HOME_SCREEN_STACK_RADIUS,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
