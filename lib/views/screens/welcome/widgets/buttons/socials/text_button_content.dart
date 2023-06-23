import 'package:flutter/material.dart';

class TextButtonContent extends StatelessWidget {
  const TextButtonContent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "JosefinSans-Bold",
        ),
      ),
    );
  }
}
