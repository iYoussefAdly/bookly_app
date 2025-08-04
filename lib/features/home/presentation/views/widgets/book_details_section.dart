import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail,
          ),
        ),
        SizedBox(height: 33),
        Text(
          bookModel.volumeInfo.title ?? "Unknown Title",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.8,
          child: Text(
            bookModel.volumeInfo.authors?.isNotEmpty == true 
                ? bookModel.volumeInfo.authors![0]
                : "Unknown Author",
            style: Styles.textStyle18.copyWith(color: kRomanSliverColor),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 18),
        // BookPublishedDate(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 20),
        BooksAction(bookModel: bookModel,),
      ],
    );
  }
}
