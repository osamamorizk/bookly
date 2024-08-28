import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Book>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Book>>> featchFuturedBooks() {
    // TODO: implement featchFuturedBooks
    throw UnimplementedError();
  }
}
