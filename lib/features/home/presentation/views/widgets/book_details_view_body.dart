import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SafeArea(child: CustomBookDetailsAppBar()),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: CustomBookImage(),
          ),
          SizedBox(height: 43),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: 0.8,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(color: kRomanSliverColor),
            ),
          ),
           SizedBox(height: 18),
          BookRatingItem(mainAxisAlignment: MainAxisAlignment.center,)
        ],
      ),
    );
  }
}
