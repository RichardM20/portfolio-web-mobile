import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/circle_profile_content.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class ExperienceContent extends StatelessWidget {
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Center(child: CircleProfileImageContent()),
          Positioned(
            bottom: 130,
            left: -5,
            child: AnimatedContainer(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 38, 60),
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12,
                      offset: Offset(0.0, 6),
                    )
                  ]),
              duration: const Duration(milliseconds: 250),
              child: Text(
                "2+ \nYears Experience",
                style: TextStyle(
                  fontFamily: FontStyles.boldStyle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
