import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
              color: Colors.white.withOpacity(.7),
            )),
        const SizedBox(
          height: 6,
        ),
        const BookRating(
          count: 0,
          rating: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const CustomActionButton(),
      ],
    );
  }
}
