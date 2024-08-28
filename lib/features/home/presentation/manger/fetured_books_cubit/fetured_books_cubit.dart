import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit() : super(FeturedBooksInitial());
}
