import 'package:flutter/material.dart';

import 'image_content.dart';
import 'name_content.dart';
import 'start_rating_content.dart';

class TopTestimonialContent extends StatelessWidget {
  const TopTestimonialContent({
    super.key,
    required this.image,
    required this.name,
    required this.rate,
    required this.profession,
  });
  final String image;
  final String name;
  final double rate;
  final String profession;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageProfileContent(
              image: image,
            ),
            NameContent(
              name: name,
              profession: profession,
            ),
          ],
        ),
        StarRating(
          rating: rate,
          starSize: 10,
        )
      ],
    );
  }
}
