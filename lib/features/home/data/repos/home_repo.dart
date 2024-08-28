import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> featchFuturedBooks();
  Future<Either<Failure, List<Book>>> featchNewestBooks();
}
