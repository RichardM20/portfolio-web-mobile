import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';

class ButtonActionCarousel extends StatelessWidget {
  ButtonActionCarousel({super.key, required this.isNext});
  final bool isNext;
  final _controller = ProjectsController.to;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isNext
          ? _controller.carouselController.nextPage(
              duration: const Duration(milliseconds: 300), curve: Curves.linear)
          : _controller.carouselController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            ),
      child: Container(
        child: Icon(
          isNext ? Icons.arrow_forward_ios_sharp : Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
