import 'package:flutter/material.dart';
import 'package:flutter_eBook_app/screens/home_screen.dart';
import 'package:flutter_eBook_app/widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final mediaQry = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Bitmap.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: themeData.textTheme.headline2,
                children: <TextSpan>[
                  const TextSpan(
                    text: 'flamin',
                  ),
                  const TextSpan(
                    text: 'go.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: mediaQry.size.width * 0.6,
              child: RoundedButton(
                btnText: 'start reading',
                fontSize: 20.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
