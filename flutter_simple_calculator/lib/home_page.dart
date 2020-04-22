import 'package:flutter/material.dart';

import './calculator_button.dart';
import './constants.dart' as constants;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> buttonTexts = constants.buttonTexts;
  var userQuery = '0 + 0';
  var result = '0';

  bool isOperator(String symbol) {
    return constants.operatorButtonTexts.contains(symbol);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQry = MediaQuery.of(context);

    bool isPotrait() {
      return mediaQry.orientation == Orientation.portrait;
    }

    double viewPortHeight() {
      return mediaQry.size.height;
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          Container(
            // gives whatever space is remaining in this Column to its child
            child: Container(
              height: isPotrait() // But: landscape is disabled in main.dart
                  ? (viewPortHeight() * 0.20)
                  : (viewPortHeight() * 0.4),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Container(
                    child: Text(userQuery),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 1),
                  ),
                  Container(
                    child: Text(result),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.fromLTRB(20, 1, 20, 2),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //flex: 2,
            // gives whatever space is remaining in this Column to its child
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 0.1,
                mainAxisSpacing: 0.1,
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
        ],
      ),
    );
  }
}
