import 'package:flutter/material.dart';
import 'package:personal_portfolio/views/widgets/block_wrapper.dart';

import 'widgets/about_me/presentation_content.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlockWrapper(PresentationTopContent());
  }
}