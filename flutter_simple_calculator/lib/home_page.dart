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
    bool isOperator(String symbol) {
      return constants.operatorButtonTexts.contains(symbol);
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
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
                  itemBuilder: (BuildContext ctx, int itemIdx) {
                    if (itemIdx == 0) {
                      return CalculatorButton(
                        textColor: Colors.white,
                        backgroundColor: Colors.lightGreen,
                        buttonText: buttonTexts[itemIdx],
                      );
                    } else if (itemIdx == 1) {
                      return CalculatorButton(
                        textColor: Colors.white,
                        backgroundColor: Colors.red,
                        buttonText: buttonTexts[itemIdx],
                      );
                    } else {
                      return CalculatorButton(
                        textColor: isOperator(buttonTexts[itemIdx])
                            ? Colors.white
                            : Colors.deepPurple,
                        backgroundColor: isOperator(buttonTexts[itemIdx])
                            ? Colors.deepPurple[400]
                            : Colors.deepPurple[100],
                        buttonText: buttonTexts[itemIdx],
                      );
                    }
                  },
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
