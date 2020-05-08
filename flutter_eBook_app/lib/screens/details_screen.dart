import 'package:flutter/material.dart';
import 'package:flutter_eBook_app/common_values.dart';
import 'package:flutter_eBook_app/widgets/book_rating.dart';
import 'package:flutter_eBook_app/widgets/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final themeData = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: screenSize.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        makeSpecifiedHeightBox(
                          screenSize.height * 0.1,
                        ),
                        BookInfo(themeData: themeData),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: 'Honey',
                        chapterNumber: 1,
                        tag: 'Life is about to go sweet',
                        screenSize: screenSize,
                        onPressed: () => showMyAlert(context, 'Chapter Info'),
                      ),
                      ChapterCard(
                        name: 'Goney',
                        chapterNumber: 2,
                        tag: 'Everthing is good okay',
                        screenSize: screenSize,
                        onPressed: () => showMyAlert(context, 'Chapter Info'),
                      ),
                      ChapterCard(
                        name: 'Toney',
                        chapterNumber: 3,
                        tag: 'Great things are happening now',
                        screenSize: screenSize,
                        onPressed: () => showMyAlert(context, 'Chapter Info'),
                      ),
                      ChapterCard(
                        name: 'Barbery',
                        chapterNumber: 4,
                        tag: 'War and peace are our topics',
                        screenSize: screenSize,
                        onPressed: () => showMyAlert(context, 'Chapter Info'),
                      ),
                      makeSpecifiedHeightBox(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: themeData.textTheme.headline4,
                      children: [
                        TextSpan(
                          text: 'You might also',
                        ),
                        TextSpan(
                          text: ' like...',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  makeSpecifiedHeightBox(20),
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 22,
                            top: 22,
                            right: 150,
                          ),
                          height: 174,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text: 'How to Win \nFriends & Influence',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Harry Harriet',
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: 4.6,
                                  ),
                                  makeSpecifiedWidthBox(20),
                                  Expanded(
                                    child: RoundedButton(
                                      btnText: 'Read',
                                      verticalPadding: 8,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/images/book-3.png',
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            makeSpecifiedHeightBox(20),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function onPressed;

  const ChapterCard({
    Key key,
    this.screenSize,
    this.name,
    this.tag,
    this.chapterNumber,
    this.onPressed,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      width: screenSize.width - 50,
      margin: const EdgeInsets.only(bottom: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 30,
            color: Color(0xFFD3D3D3).withOpacity(0.85),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber: $name \n',
                  style: TextStyle(
                    fontSize: 15,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
    @required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crushing & ',
                style: themeData.textTheme.headline5,
              ),
              Text(
                'Influence',
                style: themeData.textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 9,
                            color: kLightBlackColor,
                          ),
                        ),
                        makeSpecifiedHeightBox(),
                        RoundedButton(
                          btnText: 'Read',
                          verticalPadding: 8,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(
                        score: 4.6,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 170,
        ),
      ],
    );
  }
}
