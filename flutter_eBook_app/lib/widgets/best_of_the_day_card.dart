import 'package:flutter/material.dart';
import 'package:flutter_eBook_app/widgets/two_side_rounded_button.dart';

import '../common_values.dart';
import 'book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 175, //200
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 15,
                top: 15,
                right: screenSize.width * 0.37,
              ),
              height: 165,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(0.45),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New York Time Best for 20th March 2020',
                    style: TextStyle(
                      fontSize: 8,
                      color: kBlackColor,
                    ),
                  ),
                  makeSpecifiedHeightBox(),
                  Text(
                    'How to Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  makeSpecifiedHeightBox(10),
                  Row(
                    children: [
                      BookRating(
                        score: 4.6,
                      ),
                      makeSpecifiedWidthBox(10),
                      Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: screenSize.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 25,
              width: screenSize.width * 0.3,
              child: TwoSideRoundedButton(
                btnText: 'Read',
                radius: 25,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
