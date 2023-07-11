import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

import 'buttons/add_testimony_button.dart';
import 'carousel_content.dart';
import '../../welcome/widgets/title_content.dart';
import 'testimonials_text.dart';

class TestimonialsBody extends StatelessWidget {
  TestimonialsBody({super.key});
  final _instance = Get.put(TestimonialsController());
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.loadingData.value
          ? Center(
              child: CircularProgressIndicator(
                color: primaryColor,
                backgroundColor: primaryColor30,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const GenericSectionTitle(
                  title: "Testimonials",
                ),
                const ExperienceTestimonyText(),
                const AddTestimonyButton(),
                CarouselTestimonialsContent(),
              ],
            ),
    );
  }
}
