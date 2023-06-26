import 'package:flutter/material.dart';

class NavBarContent extends StatelessWidget {
  const NavBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [Text("Rick"), Text("Home")],
      ),
    );
  }
}
