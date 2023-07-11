import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/utils/text_content.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'buttons/add_testimony_button.dart';
import 'carousel_content.dart';

class TestimonialsBody extends StatelessWidget {
  TestimonialsBody({super.key});
  final _instance = Get.put(TestimonialsController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 30),
          child: Center(
            child: Text(
              "Testimonials",
              textAlign: TextAlign.center,
              style: titleSecondaryTextStyle,
            ),
          ),
        ),
        Center(
          child: Container(
            width: Get.width * 0.3,
            padding: const EdgeInsets.only(bottom: 10),
            child: const Text(
              testimonialsText,
              textAlign: TextAlign.center,
              style: paragraphTextStyle,
            ),
          ),
        ),
        const AddTestimonyButton(),
        CarouselTestimonialsContent(),
      ],
    );
  }
}
