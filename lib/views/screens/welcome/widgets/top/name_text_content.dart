import 'package:flutter/material.dart';

class NameTextContent extends StatelessWidget {
  const NameTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Hi there,\n",
            style: TextStyle(
              fontFamily: "JosefinSans-Regular",
              fontSize: 50,
            ),
          ),
          TextSpan(
            text: "I'm ",
            style: TextStyle(
              height: 1.2,
              fontFamily: "JosefinSans-Regular",
              fontSize: 50,
            ),
          ),
          TextSpan(
            text: "Richard ",
            style: TextStyle(
                fontSize: 50,
                fontFamily: "JosefinSans-Medium",
                color: Colors.blue),
          ),
          TextSpan(
            text: "Morales",
            style: TextStyle(
                fontSize: 50,
                fontFamily: "JosefinSans-Medium",
                color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
