import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  final _controller = TestimonialsController.to;
  RxInt hoverIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              if (_controller.rate.value == index + 1.0) {
                _controller.rate.value = index.toDouble();
              } else {
                _controller.rate.value = index + 1.0;
              }
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                hoverIndex.value = index;
              },
              onExit: (event) {
                hoverIndex.value = -1;
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                transform: Matrix4.identity()
                  ..scale(
                    hoverIndex.value >= index ? 1.2 : 1.0,
                  ),
                child: Icon(
                  Icons.star,
                  color: index < _controller.rate.value.toInt()
                      ? Colors.yellow
                      : Colors.grey,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
