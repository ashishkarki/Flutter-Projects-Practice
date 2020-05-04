import 'package:flutter/material.dart';

import '../common_values.dart';
import 'book_rating.dart';
import 'two_side_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String imageName;
  final String title;
  final String authorName;
  final double rating;
  final Function onPressedDetails;
  final Function onPressedRead;

  const ReadingListCard({
    Key key,
    this.imageName,
    this.title,
    this.authorName,
    this.rating,
    this.onPressedDetails,
    this.onPressedRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        bottom: 40,
      ),
      height: 250,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(HOME_SCREEN_STACK_RADIUS),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            imageName,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(
                  score: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 190,
            child: Container(
              height: 85,
              width: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: authorName,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: onPressedDetails,
                        child: Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Details',
                          ),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          btnText: "Read",
                          onPressed: onPressedRead,
                          radius: HOME_SCREEN_STACK_RADIUS,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
