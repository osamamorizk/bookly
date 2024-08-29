import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> featchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&q=computer&Sorting=newest&');
      List<Book> books = [];
      for (var book in data['items']) {
        try {
          books.add(Book.fromJson(book));
        } catch (e) {
          books.add(Book.fromJson(book));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<Book>>> featchFuturedBooks() async {
    try {
      var data = await apiService.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=subiect:programming');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(Book.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<Book>>> featchSimilartBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subiect:programming');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(Book.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }
}
