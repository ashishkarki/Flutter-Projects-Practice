import 'package:flutter/material.dart';
import 'package:flutter_eBook_app/common_values.dart';
import 'package:flutter_eBook_app/screens/details_screen.dart';
import 'package:flutter_eBook_app/widgets/best_of_the_day_card.dart';
import 'package:flutter_eBook_app/widgets/reading_list_card.dart';

class HomeScreen extends StatelessWidget {
  void navigateOnPressedDetails(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (ctx) => DetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/main_page_bg.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: screenSize.height * 0.1,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: 'What are you \nreading '),
                            TextSpan(
                              text: 'today?',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    makeSpecifiedHeightBox(30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ReadingListCard(
                            imageName: 'assets/images/book-1.png',
                            title: 'Crushing & Influence',
                            authorName: 'Gary Venchuk',
                            rating: 4.6,
                            onPressedDetails: () =>
                                navigateOnPressedDetails(context),
                          ),
                          ReadingListCard(
                            imageName: 'assets/images/book-2.png',
                            title: 'Top Ten Business Hacks',
                            authorName: 'Herman Joel',
                            rating: 4.4,
                          ),
                          // to give bit more space on the right
                          makeSpecifiedWidthBox(30),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Best of the '),
                                TextSpan(
                                  text: 'day',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BestOfTheDayCard(screenSize: screenSize),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Continue '),
                                TextSpan(
                                    text: 'reading...',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          makeSpecifiedHeightBox(10),
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(39),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 20),
                                    blurRadius: 30,
                                    color: Color(0xFFD3D3D3).withOpacity(.85)),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(39),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0, right: 30.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Crushing & Influence',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  'Gary Venchuk',
                                                  style: TextStyle(
                                                      color: kLightBlackColor),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    'Chapter 7 of 10',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            kLightBlackColor),
                                                  ),
                                                ),
                                                makeSpecifiedHeightBox(5),
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/book-1.png',
                                            width: 55,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 6,
                                    width: screenSize.width * 0.55,
                                    decoration: BoxDecoration(
                                      color: kProgressIndicator,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          makeSpecifiedHeightBox(30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
