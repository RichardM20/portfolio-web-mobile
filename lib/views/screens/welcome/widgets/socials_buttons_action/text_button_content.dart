import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class TextButtonContent extends StatelessWidget {
  const TextButtonContent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: smallParagraphSecondaryStyle,
      ),
    );
  }
}
