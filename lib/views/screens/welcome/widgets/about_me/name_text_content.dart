import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography.dart';
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
            style: headlineTextStyle,
          ),
          TextSpan(
            text: "I'm ",
            style: headlineTextStyle,
          ),
          TextSpan(
            text: "Richard ",
            style: headlineSecondaryTextStyle,
          ),
          TextSpan(
            text: "Morales",
            style: headlineSecondaryTextStyle,
          ),
        ],
      ),
    );
  }
}
