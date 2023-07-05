import 'package:flutter/material.dart';

import 'button_action_content.dart';

class ButtonPreviusPage extends StatelessWidget {
  const ButtonPreviusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 0,
      child: ButtonActionCarousel(
        isNext: false,
      ),
    );
  }
}
