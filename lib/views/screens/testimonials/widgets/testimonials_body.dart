import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'carousel_content.dart';

class TestimonialsBody extends StatelessWidget {
  const TestimonialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 30),
          child: Text(
            "Testimonials",
            style: titleSecondaryTextStyle,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "I would love to hear your feedback on my work! If you have had the opportunity to work with me, I invite you to leave a testimonial to share your experience. :)",
            style: paragraphTextStyle,
          ),
        ),
        CarouselTestimonialsContent(),
      ],
    );
  }
}
