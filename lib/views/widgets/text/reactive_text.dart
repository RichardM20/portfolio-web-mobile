import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveText extends StatelessWidget {
  const ReactiveText(
    this.text, {
    super.key,
    required this.style,
  });

  final RxString? text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        text?.value ?? "",
        style: style,
      ),
    );
  }
}
