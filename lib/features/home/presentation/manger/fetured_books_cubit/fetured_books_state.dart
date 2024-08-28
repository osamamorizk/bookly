part of 'fetured_books_cubit.dart';

sealed class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeturedBooksInitial extends FeturedBooksState {}

final class FeturedBooksLoading extends FeturedBooksState {}

final class FeturedBooksFailure extends FeturedBooksState {
  final String errorMessage;

  const FeturedBooksFailure({required this.errorMessage});
}

final class FeturedBooksSuccess extends FeturedBooksState {
  final List<Book> books;

  const FeturedBooksSuccess({required this.books});
}
