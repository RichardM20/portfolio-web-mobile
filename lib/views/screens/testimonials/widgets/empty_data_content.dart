import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class EmptyDataContent extends StatelessWidget {
  const EmptyDataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Not diaplay data',
        style: subtitlePrimaryStyle,
      ),
    );
  }
}
