import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/buttons/button_save_content.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/form/form_content.dart';

class ModalBottomFormContent extends StatelessWidget {
  const ModalBottomFormContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        padding: Get.width < 600
            ? const EdgeInsets.symmetric(horizontal: 5, vertical: 5)
            : const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        child: Column(
          children: [
            FormTestimonyContent(),
            const SizedBox(height: 5),
            TestimonySaveButton(),
          ],
        ),
      ),
    );
  }
}
