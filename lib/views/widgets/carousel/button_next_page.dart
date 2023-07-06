import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import 'button_action_content.dart';

class ButtonNextPage extends StatelessWidget {
  const ButtonNextPage({super.key, required this.controller});
  final CarouselController controller;
  @override
  Widget build(BuildContext context) {
    return ButtonActionCarousel(
      isNext: true,
      carouselController: controller,
    );
  }
}
