import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/views/widgets/carousel/carousel_content.dart';

import 'testimonial_item/testimonail_item_decoration.dart';
import 'testimonial_item/testimonial_item_data.dart';

class CarouselTestimonialsContent extends StatelessWidget {
  CarouselTestimonialsContent({super.key});
  final _instance = Get.put(TestimonialsController());
  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return GenericCarouselContent(
      carouselController: _controller.carouselController,
      height: 150,
      listWidgets: const [
        TestimonialItemDecoration(
          widget: TestimonialItemData(
            date: '20-01-2002',
            image: '',
            message: 'El mejor del mundo',
            profession: 'nada de nada',
            name: 'Rick',
            rate: 3.5,
          ),
        ),
      ],
    );
  }
}
