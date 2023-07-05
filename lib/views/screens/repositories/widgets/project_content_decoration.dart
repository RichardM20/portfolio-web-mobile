import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectContentDecoration extends StatelessWidget {
  ProjectContentDecoration({
    super.key,
    required this.indexSelected,
    required this.widget,
  });
  final RxInt indexSelected;
  final Widget widget;
  RxInt index = 100.obs;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        index.value = indexSelected.value;
      },
      onExit: (value) => index.value = 100,
      child: Obx(
        () => Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: index.value != indexSelected.value
                ? []
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                      offset: const Offset(0.0, 0.0),
                    ),
                  ],
          ),
          child: widget,
        ),
      ),
    );
  }
}
