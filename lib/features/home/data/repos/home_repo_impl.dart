import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest",
      );
      List<BookModel> booksList = [];
      for (var item in data["items"]) {
        booksList.add(BookModel.fromJson(item));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async{
     try {
      var data = await apiServices.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:programming",
      );
      List<BookModel> booksList = [];
      for (var item in data["items"]) {
        booksList.add(BookModel.fromJson(item));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }
}
