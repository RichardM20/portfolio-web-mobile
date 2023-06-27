import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class TextButtonContent extends StatelessWidget {
  const TextButtonContent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontFamily: FontStyles.boldStyle,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
