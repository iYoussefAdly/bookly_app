import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
 Widget build(BuildContext context) {
  return SizedBox(
    height: 150,
    child: Row(
      children: [
        AspectRatio(
          aspectRatio: 2.2 / 4,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetsData.staticImage),
               fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter and the Goblet of Fire",
                style: Styles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}
