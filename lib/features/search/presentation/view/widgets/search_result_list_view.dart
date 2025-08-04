import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return Center(
              child: Text(
                "No books found for your search",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[400],
                ),
              ),
            );
          }
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BookItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
         return CustomErrorWidget(errorMessage: state.erroMessage);
        } else if (state is SearchLoading) {
         return CustomLoadingIndicator();
        } else {
         return Center(
           child: Text(
             "Search for books to get started",
             style: TextStyle(
               fontSize: 18,
               color: Colors.grey[400],
             ),
           ),
         );
        }
      },
    );
  }
}
