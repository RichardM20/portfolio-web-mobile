import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class TestimonySaveButton extends StatelessWidget {
  TestimonySaveButton({super.key});
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _controller.uploadingData.value == true
            ? null
            : () => _controller.validateForm(),
        child: Obx(
          () => AnimatedContainer(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            duration: const Duration(milliseconds: 250),
            height: 30,
            width: _controller.uploadingData.value ? 30 : 80,
            child: Center(
              child: _controller.uploadingData.value
                  ? CircularProgressIndicator(
                      color: whiteColor,
                      strokeWidth: 3.0,
                      semanticsLabel: 'Loading',
                      backgroundColor: primaryColor30,
                    )
                  : const Text(
                      "Save",
                      style: buttonsTextStyle,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
