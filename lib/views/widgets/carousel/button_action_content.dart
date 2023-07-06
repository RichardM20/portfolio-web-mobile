import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ButtonActionCarousel extends StatelessWidget {
  const ButtonActionCarousel(
      {super.key, required this.isNext, required this.carouselController});
  final bool isNext;
  final CarouselController carouselController;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isNext
          ? carouselController.nextPage(
              duration: const Duration(milliseconds: 300), curve: Curves.linear)
          : carouselController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            ),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
        ),
        child: Center(
          child: Icon(
            isNext ? Icons.arrow_forward_ios_sharp : Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
