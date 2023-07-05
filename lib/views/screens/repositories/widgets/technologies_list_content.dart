import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography.dart';

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
          (indx) => Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 1,
            ),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              technologies[indx],
              style: smallParagraphSecondaryStyle,
            ),
          ),
        ),
      ),
    );
  }
}
