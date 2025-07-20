import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: FeaturedListViewItem(),
                ),
                Text("Best seller", style: Styles.textStyle20),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(child: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: BestSellerListViewItem(),
        ))
      ],
    );
  }
}
