import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class GenericSectionTitle extends StatelessWidget {
  const GenericSectionTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: titleSecondaryTextStyle,
        ),
      ),
    );
  }
}
