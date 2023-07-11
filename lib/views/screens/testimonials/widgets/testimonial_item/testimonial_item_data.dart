import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_portfolio/utils/typography_style.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/testimonial_item/top_decoration_content.dart';

class TestimonialItemData extends StatelessWidget {
  const TestimonialItemData({
    super.key,
    required this.image,
    required this.name,
    required this.rate,
    required this.message,
    required this.date,
    required this.profession,
  });
  final String image;
  final String name;
  final double rate;
  final String profession;
  final String message;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopTestimonialContent(
                image: image,
                name: name,
                rate: rate,
                profession: profession,
              ),
              const Divider(),
              Flexible(
                child: Text(
                  message,
                  style: paragraphTextStyle,
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Text(
              DateFormat.yMMMMd('es').add_Hm().format(date),
              style: dateTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
