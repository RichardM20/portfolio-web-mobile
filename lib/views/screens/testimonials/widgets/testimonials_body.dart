import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'carousel_content.dart';

class TestimonialsBody extends StatelessWidget {
  const TestimonialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 30),
          child: Text(
            "Testimonials",
            style: titleSecondaryTextStyle,
          ),
        ),
        CarouselTestimonialsContent(),
      ],
    );
  }
}
