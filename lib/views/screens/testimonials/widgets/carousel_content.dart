import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/empty_data_content.dart';
import 'package:personal_portfolio/views/widgets/carousel/carousel_content.dart';

import 'testimonial_item/testimonail_item_decoration.dart';
import 'testimonial_item/testimonial_item_data.dart';

class CarouselTestimonialsContent extends StatelessWidget {
  CarouselTestimonialsContent({super.key});

  final _controller = TestimonialsController.to;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.testimonialsModel.isEmpty
          ? const EmptyDataContent()
          : GenericCarouselContent(
              carouselController: _controller.carouselController,
              height: 170,
              listWidgets: List.generate(
                _controller.testimonialsModel.length,
                (index) {
                  final data = _controller.testimonialsModel[index];
                  return TestimonialItemDecoration(
                    selected: index,
                    widget: TestimonialItemData(
                      date: data.publishedAt!,
                      image: data.profileimage ?? "",
                      message: data.message ?? "",
                      profession: data.profession ?? "",
                      name: data.username ?? "",
                      rate: double.parse(data.rate.toString()) ?? 0.0,
                    ),
                  );
                },
              ),
            ),
    );
  }
}
