import 'package:flutter/material.dart';

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
        color: Colors.white,
      ),
      child: widget,
    );
  }
}
