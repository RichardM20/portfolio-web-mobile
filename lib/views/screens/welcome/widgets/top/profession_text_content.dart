import 'package:flutter/material.dart';

class ProfessionTextContent extends StatelessWidget {
  const ProfessionTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "I am ",
            style: TextStyle(
              fontFamily: "JosefinSans-Regular",
              fontSize: 35,
            ),
          ),
          TextSpan(
            text: "Into ",
            style: TextStyle(
              fontFamily: "JosefinSans-Regular",
              fontSize: 35,
            ),
          ),
          TextSpan(
            text: "Flutter ",
            style: TextStyle(
                fontSize: 35,
                fontFamily: "JosefinSans-Medium",
                color: Colors.blue),
          ),
          TextSpan(
            text: "Develop",
            style: TextStyle(
                fontSize: 35,
                fontFamily: "JosefinSans-Medium",
                color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
