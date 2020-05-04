import 'package:flutter/material.dart';

import '../common_values.dart';

class BookRating extends StatelessWidget {
  final double score;

  const BookRating({
    Key key,
    this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Colors.pink.shade100, // white
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xFD3D3D3).withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star_border,
            color: kIconColor,
            size: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$score',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
