import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';

class RatingWidget extends StatelessWidget {
  RatingWidget({super.key});
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Obx(() => GestureDetector(
              onTap: () {
                if (_controller.rate.value == index + 1.0) {
                  _controller.rate.value = index
                      .toDouble(); // Desmarca la estrella si se toca nuevamente
                } else {
                  _controller.rate.value =
                      index + 1.0; // Marca la estrella y las anteriores
                }
              },
              child: Icon(
                Icons.star,
                color: index < _controller.rate.value.toInt()
                    ? Colors.yellow
                    : Colors.grey,
              ),
            ));
      }),
    );
  }
}
