import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ButtonActionCarousel extends StatelessWidget {
  const ButtonActionCarousel({
    super.key,
    required this.isNext,
    required this.carouselController,
    required this.isHover,
  });
  final bool isNext;
  final CarouselController carouselController;
  final RxBool isHover;
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
      child: MouseRegion(cursor: SystemMouseCursors.click,
        onEnter: (event) => isHover.value = true,
        onExit: (event) => isHover.value = false,
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isHover.value == false ? 40 : 50,
            height: isHover.value == false ? 15 : 20,
            margin: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              boxShadow: isHover.value == false
                  ? [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(0, 0.0),
                        blurRadius: 1,
                      )
                    ]
                  : [
                      const BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 0),
                        blurRadius: 12,
                      )
                    ],
              color: primaryColor,
            ),
            child: Center(
              child: Icon(
                isNext ? Icons.arrow_forward_ios_sharp : Icons.arrow_back_ios,
                color: whiteColor,
                size: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
