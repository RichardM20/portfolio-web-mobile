import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class ProfessionTextContent extends StatelessWidget {
  const ProfessionTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "I am ",
            style: TextStyle(
              fontFamily: FontStyles.lightStyle,
              fontSize: 35,
            ),
          ),
          TextSpan(
            text: "Into ",
            style: TextStyle(
              fontFamily: FontStyles.lightStyle,
              fontSize: 35,
            ),
          ),
          TextSpan(
            text: "Flutter ",
            style: TextStyle(
              fontSize: 35,
              fontFamily: FontStyles.regularStyle,
              color: const Color.fromARGB(255, 9, 73, 122),
            ),
          ),
          TextSpan(
            text: "Develop",
            style: TextStyle(
              fontSize: 35,
              fontFamily: FontStyles.regularStyle,
              color: const Color.fromARGB(255, 9, 73, 122),
            ),
          ),
        ],
      ),
    );
  }
}
