import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionDecorationContent extends StatelessWidget {
  const ActionDecorationContent({
    super.key,
    required this.isHover,
    required this.widget,
  });
  final RxBool isHover;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        margin: const EdgeInsets.only(
          left: 10,
        ),
        transform: Matrix4.translationValues(
          0.0,
          isHover.value ? -5.0 : 0.0, //dezplazamiento hacia arriba
          0.0,
        ),
        decoration: BoxDecoration(
          color: isHover.value
              ? const Color.fromARGB(255, 9, 73, 122).withOpacity(0.3)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: widget,
      ),
    );
  }
}
