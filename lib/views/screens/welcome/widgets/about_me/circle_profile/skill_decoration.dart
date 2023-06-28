import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class SkillDecoration extends StatelessWidget {
  const SkillDecoration({
    super.key,
    required this.skillName,
    required this.backgroundColor,
  });
  final String skillName;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 0.0),
            blurRadius: 8,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      child: Text(
        skillName,
        style: TextStyle(
          color: Colors.white,
          fontFamily: FontStyles.regularStyle,
          fontSize: 8,
        ),
      ),
    );
  }
}
