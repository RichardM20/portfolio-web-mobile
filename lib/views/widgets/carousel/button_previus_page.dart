import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_action_content.dart';

class ButtonPreviusPage extends StatelessWidget {
  const ButtonPreviusPage({super.key, required this.controller});
  final CarouselController controller;
  @override
  Widget build(BuildContext context) {
    return ButtonActionCarousel(
      isNext: false,
      isHover: false.obs,
      carouselController: controller,
    );
  }
}
