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
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 0.0),
            blurRadius: 8,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Text(
        skillName,
        style: TextStyle(
          color: Colors.white,
          fontFamily: FontStyles.regularStyle,
          fontSize: FontStyles.paragraphSize.value,
        ),
      ),
    );
  }
}
