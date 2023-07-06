import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

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
            text: "Richard ",
            style: bigSecondayTitleStyle,
          ),
          TextSpan(
            text: "Morales",
            style: bigSecondayTitleStyle,
          ),
        ],
      ),
    );
  }
}
