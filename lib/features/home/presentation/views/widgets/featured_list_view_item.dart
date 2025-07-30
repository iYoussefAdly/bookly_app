import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: CustomBookImage(),
              ),
        ),
      ),
    );
  }
}
