import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/block_wrapper.dart';

import 'widgets/testimonials_body.dart';

class TestimonialsContent extends StatelessWidget {
  const TestimonialsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlockWrapper( TestimonialsBody());
  }
}
