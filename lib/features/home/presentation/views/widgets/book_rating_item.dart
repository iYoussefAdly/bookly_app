import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, color: kStarColor),
          SizedBox(width: 6.3),
          Text('4.8', style: Styles.textStyle16),
          SizedBox(width: 5),
          Text(
            '(254)',
            style: Styles.textStyle14.copyWith(
              color: kRomanSliverColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
