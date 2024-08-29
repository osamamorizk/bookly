import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key, this.onPressed, required this.book});
  final Function()? onPressed;
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const CustomButton(
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            text: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            onPressed: onPressed,
            backgroundColor: Color(0xffEF8262),
            textcolor: Colors.white,
            fontSize: 14,
            text: getText(book),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }

  String getText(Book book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return 'Preview';
    }
  }
}
