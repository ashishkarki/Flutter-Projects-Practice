import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String buttonText;

  CalculatorButton({
    this.backgroundColor,
    this.textColor,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
