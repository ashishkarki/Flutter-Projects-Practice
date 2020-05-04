import 'package:flutter/material.dart';

import '../common_values.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    Key key,
    this.btnText,
    this.onPressed,
    this.verticalPadding = ROUNDED_BUTTON_DEFAULT_DIMENSIONS,
    this.fontSize = ROUNDED_BUTTON_DEFAULT_DIMENSIONS,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
            vertical: ROUNDED_BUTTON_DEFAULT_DIMENSIONS),
        padding: const EdgeInsets.symmetric(
          vertical: ROUNDED_BUTTON_DEFAULT_DIMENSIONS,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(.40), //kShadowColor,
              ),
            ]),
        child: Text(
          btnText, //'start reading',
          style: TextStyle(
            fontSize: ROUNDED_BUTTON_DEFAULT_DIMENSIONS,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
