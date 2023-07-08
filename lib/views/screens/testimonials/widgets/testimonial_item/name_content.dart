import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class NameContent extends StatelessWidget {
  const NameContent({super.key, required this.name, required this.profession});
  final String name;
  final String profession;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$name\n",
            style: subtitlePrimaryStyle,
          ),
          TextSpan(
            text: profession,
            style: paragraphTextStyle,
          )
        ],
      ),
    );
  }
}
