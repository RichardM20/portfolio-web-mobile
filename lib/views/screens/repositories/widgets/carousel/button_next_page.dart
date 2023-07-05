import 'package:flutter/material.dart';

import 'button_action_content.dart';

class ButtonNextPage extends StatelessWidget {
  const ButtonNextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      right: 0,
      child: ButtonActionCarousel(
        isNext: true,
      ),
    );
  }
}
