import 'dart:ui';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_published_date.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_of_the_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: 160,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: ImageOfTheItem(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14.copyWith(
                        color: kRomanSliverColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Free",
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          BookPublishedDate(publishedDate: bookModel.volumeInfo.publishedDate??"2004", count: bookModel.volumeInfo.pageCount!,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
