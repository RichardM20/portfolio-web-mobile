import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography.dart';

class ProfessionTextContent extends StatelessWidget {
  const ProfessionTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "I am ",
            style: bodyTextStyle,
          ),
          TextSpan(
            text: "Into ",
            style: bodyTextStyle,
          ),
          TextSpan(
            text: "Flutter ",
            style: bodySecondaryTextStyle,
          ),
          TextSpan(
            text: "Develop",
            style: bodySecondaryTextStyle,
          ),
        ],
      ),
    );
  }
}
