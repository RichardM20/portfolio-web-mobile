import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

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
          horizontal: 10,
          vertical: 8,
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
          color: isHover.value ? primaryColor30 : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: widget,
      ),
    );
  }
}
