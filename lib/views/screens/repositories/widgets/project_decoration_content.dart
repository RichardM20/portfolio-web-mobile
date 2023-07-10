import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ProjectContentDecoration extends StatelessWidget {
  const ProjectContentDecoration({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(22, 0, 0, 0),
            blurRadius: 4,
            offset: Offset(0.0, 0.0),
          )
        ],
        color: whiteColor,
      ),
      child: widget,
    );
  }
}
