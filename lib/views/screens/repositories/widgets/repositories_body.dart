import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/carousel_content.dart';

class RepositoriesBody extends StatelessWidget {
  const RepositoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 30),
            child: Text(
              "Projects",
              style: titleSecondaryTextStyle,
            ),
          ),
          CarouselContent()
        ],
      ),
    );
  }
}
