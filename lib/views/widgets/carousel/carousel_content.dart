import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_next_page.dart';
import 'button_previus_page.dart';

class GenericCarouselContent extends StatelessWidget {
  const GenericCarouselContent({
    super.key,
    required this.carouselController,
    required this.listWidgets,
    this.height,
  });
  final CarouselController carouselController;
  final List<Widget> listWidgets;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: height ?? 200,
            viewportFraction: Get.width < 600 ? 0.50 : 0.32,
            autoPlay: false,
            padEnds: true,
            reverse: false,
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
          ),
          carouselController: carouselController,
          items: listWidgets,
        ),
        Positioned(
          bottom: 80,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonPreviusPage(
                controller: carouselController,
              ),
              ButtonNextPage(
                controller: carouselController,
              ),
            ],
          ),
        )
      ],
    );
  }
}
