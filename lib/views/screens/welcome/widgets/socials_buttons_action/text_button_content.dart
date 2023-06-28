import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class TextButtonContent extends StatelessWidget {
  const TextButtonContent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 4.5,
          fontFamily: FontStyles.boldStyle,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
