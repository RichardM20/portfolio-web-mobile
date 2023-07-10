import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/testomonials_controller.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_family.dart';

class AddTestimonyButton extends StatelessWidget {
  const AddTestimonyButton({super.key, required this.isHover});
  final RxBool isHover;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => isHover.value = true,
      onExit: (event) => isHover.value = false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => print("clicked"),
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: !isHover.value ? 100 : 80,
            height: !isHover.value ? 25 : 20,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(3),
              boxShadow: isHover.value
                  ? []
                  : [
                      const BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
            ),
            margin: const EdgeInsets.only(bottom: 20, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Add testimony",
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: semiBold,
                    fontSize: isHover.value ? 8 : 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
