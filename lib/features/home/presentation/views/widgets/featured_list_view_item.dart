import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/cubits/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return CustomLoadingIndicator();
        }
       else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 210,
            child: Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.featuredBooks.length,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GestureDetector(
                        onTap:() => GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.featuredBooks[index]),
                        child: CustomBookImage(
                          imageUrl: state.featuredBooks[index].volumeInfo.imageLinks?.thumbnail,
                        ),
                      ),
                    ),
              ),
            ),
          );
        }
        else if (state is FeaturedBooksFailure) {
          return Center(
            child:CustomErrorWidget(errorMessage: state.errorMessage)
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
