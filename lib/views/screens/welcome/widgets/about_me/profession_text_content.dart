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
            style: mediumPrimaryTextStyle,
          ),
          TextSpan(
            text: "Into ",
            style: mediumPrimaryTextStyle,
          ),
          TextSpan(
            text: "Flutter ",
            style: mediumSecondaryTextStyle,
          ),
          TextSpan(
            text: "Develop",
            style: mediumSecondaryTextStyle,
          ),
        ],
      ),
    );
  }
}
