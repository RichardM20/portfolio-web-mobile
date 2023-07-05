import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/firebase_controller.dart';
import 'package:personal_portfolio/utils/typography.dart';

class TestimonialsBody extends StatelessWidget {
  TestimonialsBody({super.key});
  final _instance = Get.put(TestimonialsController());
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 30),
          child: Text(
            "Testimonials",
            style: mediumSecondaryTextStyle,
          ),
        ),
      ],
    );
  }
}
