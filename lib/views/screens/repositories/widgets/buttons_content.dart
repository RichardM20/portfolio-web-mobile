import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_family.dart';

class ActionButtonProject extends StatelessWidget {
  const ActionButtonProject({
    super.key,
    required this.textButton,
    this.onTap,
    required this.isHover,
  });
  final String textButton;
  final Function()? onTap;
  final RxBool isHover;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => isHover.value = true,
      onExit: (event) => isHover.value = false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            margin: const EdgeInsets.only(bottom: 5),
            height: 20,
            width: isHover.value ? 70 : 30,
            decoration: BoxDecoration(
              color: isHover.value ? primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.code,
                  color: isHover.value ? Colors.white : primaryColor,
                  size: 15,
                ),
                if (isHover.value)
                  const Flexible(
                    child: Text(
                      "View code",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: regularStyle,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
