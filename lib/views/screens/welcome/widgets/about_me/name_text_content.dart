import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class NameTextContent extends StatelessWidget {
  const NameTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Hi there,\n",
            style: TextStyle(
              fontFamily: FontStyles.lightStyle,
              fontSize: 50,
            ),
          ),
          TextSpan(
            text: "I'm ",
            style: TextStyle(
              height: 1.2,
              fontFamily: FontStyles.lightStyle,
              fontSize: 50,
            ),
          ),
          TextSpan(
            text: "Richard ",
            style: TextStyle(
              fontSize: 50,
              fontFamily: FontStyles.regularStyle,
              color: const Color.fromARGB(255, 9, 73, 122),
            ),
          ),
          TextSpan(
            text: "Morales",
            style: TextStyle(
              fontSize: 50,
              fontFamily: FontStyles.regularStyle,
              color: const Color.fromARGB(255, 9, 73, 122),
            ),
          ),
        ],
      ),
    );
  }
}
