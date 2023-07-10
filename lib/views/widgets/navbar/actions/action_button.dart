import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/views/widgets/navbar/actions/action_button_decoration.dart';
import 'package:personal_portfolio/views/widgets/navbar/actions/action_button_text_content.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onTap,
    required this.name,
    required this.isHover,
  });
  final Function()? onTap;
  final String name;
  final RxBool isHover;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(cursor: SystemMouseCursors.click,
      onEnter: (event) {
        isHover.value = true;
      },
      onExit: (event) {
        isHover.value = false;
      },
      child: GestureDetector(
        onTap: onTap,
        child: ActionDecorationContent(
          isHover: isHover,
          widget: ActionButtonText(
            name: name,
            isHover: isHover,
          ),
        ),
      ),
    );
  }
}
