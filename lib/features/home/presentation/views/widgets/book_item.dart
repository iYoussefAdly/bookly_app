import 'dart:ui';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_of_the_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
class BookItem extends StatelessWidget {
  const BookItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: 160,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.2 / 4,
              child: ImageOfTheItem(),
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
                        "Harry Potter and the Goblet of Fire",
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "J.K.Rowling",
                      style: Styles.textStyle14.copyWith(color: kRomanSliverColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "19.99\$",
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          BookRatingItem()
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

