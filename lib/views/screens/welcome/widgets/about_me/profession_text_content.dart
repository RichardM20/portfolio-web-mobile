import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class ProfessionTextContent extends StatelessWidget {
  const ProfessionTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "I am ",
            style: titlePrimaryTextStyle,
          ),
          TextSpan(
            text: "Into ",
            style: titlePrimaryTextStyle,
          ),
          TextSpan(
            text: "Flutter ",
            style: titleSecondaryTextStyle,
          ),
          TextSpan(
            text: "Develop",
            style: titleSecondaryTextStyle,
          ),
        ],
      ),
    );
  }
}
