import 'package:flutter/material.dart';

class ProjectImagecontent extends StatelessWidget {
  const ProjectImagecontent({super.key, required this.asset});
  final String asset;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Image.asset(
        asset,
        fit: BoxFit.cover,
      ),
    );
  }
}
