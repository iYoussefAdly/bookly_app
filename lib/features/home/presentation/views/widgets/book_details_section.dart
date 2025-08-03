import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl:
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
          ),
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
        // BookPublishedDate(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 20),
        BooksAction(),
      ],
    );
  }
}
