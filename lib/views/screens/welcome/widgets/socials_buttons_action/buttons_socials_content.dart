import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';

import 'icon_social_content.dart';
import 'text_button_content.dart';

class SocialsButtons extends StatefulWidget {
  const SocialsButtons(
      {super.key,
      this.text,
      required this.iconName,
      required this.isHover,
      required this.background});
  final String? text;
  final String iconName;
  final RxBool isHover;
  final Color background;
  @override
  State<SocialsButtons> createState() => _SocialsButtonsState();
}

class _SocialsButtonsState extends State<SocialsButtons>
    with SingleTickerProviderStateMixin {
  final controller = SocialsButtonsActionController.to;
  @override
  void initState() {
    super.initState();
    controller.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      upperBound: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MouseRegion(
        onEnter: (event) {
          widget.isHover.value = true;
          controller.animationController.forward(from: 0.0);
        },
        onExit: (event) {
          widget.isHover.value = false;
          controller.animationController.forward(from: 0.5);
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 10),
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
              color: widget.isHover.value == true
                  ? widget.background
                  : const Color.fromARGB(255, 9, 73, 122),
              borderRadius: BorderRadius.circular(50),
              boxShadow: widget.isHover.value == false
                  ? []
                  : const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 50,
                        offset: Offset(0.0, 10),
                      )
                    ]),
          padding: MediaQuery.of(context).size.width > 900
              ? widget.isHover == true
                  ? const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                  : EdgeInsets.zero
              : EdgeInsets.zero,
          height: 70,
          width: widget.isHover.value
              ? widget.text!.length > 16
                  ? 230
                  : widget.text!.length >= 14 && widget.text!.length <= 16
                      ? 200
                      : 160
              : 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SocialIconContent(
                iconName: widget.iconName,
                animationController: controller.animationController,
                onHover: widget.isHover,
              ),
              if (widget.isHover.value)
                const SizedBox(
                  width: 8,
                ),
              MediaQuery.of(context).size.width > 900
                  ? widget.isHover.value == true
                      ? TextButtonContent(text: widget.text!)
                      : Container()
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}