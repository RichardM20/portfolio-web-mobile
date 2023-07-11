import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ButtonActionCarousel extends StatefulWidget {
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
  State<ButtonActionCarousel> createState() => _ButtonActionCarouselState();
}

class _ButtonActionCarouselState extends State<ButtonActionCarousel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () => widget.isNext
          ? widget.carouselController.nextPage(
              duration: const Duration(milliseconds: 300), curve: Curves.linear)
          : widget.carouselController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {

          _controller.forward();
        },
        onExit: (event) {
          _controller.reverse();
        },
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Obx(
            () => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 40,
              height: 15,
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                boxShadow: widget.isHover.value == false
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
                  widget.isNext
                      ? Icons.arrow_forward_ios_sharp
                      : Icons.arrow_back_ios,
                  color: whiteColor,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
