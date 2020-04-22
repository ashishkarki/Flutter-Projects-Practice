import 'package:flutter/material.dart';

import './calculator_button.dart';
import './constants.dart' as constants;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> buttonTexts = constants.buttonTexts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: Column(
        children: [
          Expanded(
            // gives whatever space is remaining in this Column to its child
            child: Container(
              child: Center(
                child: Text('display text'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            // gives whatever space is remaining in this Column to its child
            child: Container(
              child: Center(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    // crossAxisSpacing: 4.0,
                    // mainAxisSpacing: 4.0,
                  ),
                  itemBuilder: (BuildContext ctx, int itemIdx) =>
                      CalculatorButton(
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurple[200],
                    buttonText: buttonTexts[itemIdx],
                  ),
                  itemCount: buttonTexts.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
