import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';

import 'icon_social_content.dart';
import 'text_button_content.dart';
import 'dart:html' as html;
import 'package:personal_portfolio/utils/colors_app.dart';

class SocialsButtons extends StatefulWidget {
  const SocialsButtons({
    super.key,
    this.text,
    required this.iconName,
    required this.isHover,
    required this.background,
    required this.url,
  });
  final String? text;
  final String iconName;
  final RxBool isHover;
  final Color background;
  final String url;
  @override
  State<SocialsButtons> createState() => _SocialsButtonsState();
}

class _SocialsButtonsState extends State<SocialsButtons>
    with SingleTickerProviderStateMixin {
  final _controller = SocialsButtonsActionController();
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      upperBound: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          widget.isHover.value = true;
          animationController.forward(from: 0.0);
        },
        onExit: (event) {
          widget.isHover.value = false;
          animationController.forward(from: 0.5);
        },
        child: GestureDetector(
          onTap: () {
            if (widget.url.isEmpty) {
              _controller.downloadPdf();
            } else {
              html.window.open(widget.url, '_blank');
            }
          },
          child: AnimatedContainer(
            margin: const EdgeInsets.only(right: 10),
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
                color: widget.isHover.value == true
                    ? widget.background
                    : primaryColor,
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
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            height: 35,
            width: widget.isHover.value ? 100 : 35,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: SocialIconContent(
                      iconName: widget.iconName,
                      animationController: animationController,
                      onHover: widget.isHover,
                    ),
                  ),
                  widget.isHover.value == true
                      ? TextButtonContent(text: widget.text!)
                      : Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
