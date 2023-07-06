import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class TechnologiesContent extends StatelessWidget {
  const TechnologiesContent({super.key, required this.technologies});
  final List<String> technologies;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        children: List.generate(
          technologies.length,
          (indx) {
            final randomColor = Color.fromRGBO(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(150),
              1,
            );
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 0.5,
              ),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: randomColor,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Text(
                technologies[indx],
                style: smallParagraphSecondaryStyle,
              ),
            );
          },
        ),
      ),
    );
  }
}
