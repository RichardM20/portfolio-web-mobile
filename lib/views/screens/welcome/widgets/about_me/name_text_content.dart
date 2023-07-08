import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/text_content.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class NameTextContent extends StatelessWidget {
  const NameTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Hi there,\n",
            style: bigPrimaryTitleStyle,
          ),
          TextSpan(
            text: "I'm ",
            style: bigPrimaryTitleStyle,
          ),
          TextSpan(
            text: "$name ",
            style: bigSecondayTitleStyle,
          ),
          TextSpan(
            text: apell,
            style: bigSecondayTitleStyle,
          ),
        ],
      ),
    );
  }
}
