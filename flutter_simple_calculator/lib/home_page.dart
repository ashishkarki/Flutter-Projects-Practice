import 'package:flutter/material.dart';

import './calculator_button.dart';
import './constants.dart' as constants;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> buttonTexts = constants.buttonTexts;
  var userQuery = '';
  var result = '';

  bool isOperator(String symbol) {
    return constants.operatorButtonTexts.contains(symbol);
  }

  void updateUserQuery(
      {String buttonText = '', bool reset = false, bool delete = false}) {
    setState(
      () {
        if (reset) {
          userQuery = '';
        } else if (delete) {
          userQuery = userQuery.substring(0, userQuery.length - 1);
        } else {
          userQuery += buttonText;
        }
      },
    );
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
                  Container(
                    child: Text(
                      userQuery,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 1),
                  ),
                  Container(
                    child: Text(
                      result,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
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
                    onButtonTap: () {
                      updateUserQuery(reset: true);
                    },
                    textColor: Colors.white,
                    backgroundColor: Colors.lightGreen,
                    buttonText: buttonTexts[itemIdx],
                  );
                } else if (itemIdx == 1) {
                  return CalculatorButton(
                    onButtonTap: () {
                      updateUserQuery(delete: true);
                    },
                    textColor: Colors.white,
                    backgroundColor: Colors.red,
                    buttonText: buttonTexts[itemIdx],
                  );
                } else {
                  return CalculatorButton(
                    onButtonTap: () {
                      updateUserQuery(buttonText: buttonTexts[itemIdx]);
                    },
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
