import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookPublishedDate extends StatelessWidget {
  const BookPublishedDate({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.publishedDate, required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String publishedDate;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(publishedDate, style: Styles.textStyle16),
          SizedBox(width: 5),
          Text(
            '($count)',
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
