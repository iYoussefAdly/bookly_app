import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Expanded(
        child: Column(
          children: [
            SafeArea(child: CustomBookDetailsAppBar()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .22),
              child: CustomBookImage(),
            ),
            SizedBox(height: 33),
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
            BookRatingItem(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(height: 37),
            BooksAction(),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
            SimilarBooksListView(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
