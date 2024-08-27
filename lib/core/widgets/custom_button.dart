import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.borderRadius,
      this.backgroundColor,
      this.textcolor,
      this.onPressed});
  final String text;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final Color? textcolor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: textcolor),
          ),
        ),
      ),
    );
  }
}
