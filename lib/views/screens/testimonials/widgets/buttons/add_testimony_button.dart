import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography_style.dart';
import 'package:personal_portfolio/views/screens/testimonials/widgets/modal/modal.dart';

class AddTestimonyButton extends StatefulWidget {
  const AddTestimonyButton({
    Key? key,
  }) : super(key: key);

  @override
  _AddTestimonyButtonState createState() => _AddTestimonyButtonState();
}

class _AddTestimonyButtonState extends State<AddTestimonyButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _controller.forward().then((value) => _controller.reverse());
          showModal(context);
        },
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: 100,
            height: 25,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(3),
            ),
            margin: const EdgeInsets.only(bottom: 20, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: const Center(
              child: Text(
                "Add testimony",
                style: buttonsTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
