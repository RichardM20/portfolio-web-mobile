import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class TestimonialItemDecoration extends StatefulWidget {
  const TestimonialItemDecoration({
    Key? key,
    required this.widget,
    required this.selected,
  }) : super(key: key);

  final Widget widget;
  final int selected;

  @override
  State<TestimonialItemDecoration> createState() =>
      _TestimonialItemDecorationState();
}

class _TestimonialItemDecorationState extends State<TestimonialItemDecoration>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
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
      onEnter: (_) {
        if (widget.selected == widget.selected) {
          _controller.forward();
        }
      },
      onExit: (_) {
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(22, 0, 0, 0),
                blurRadius: 4,
                offset: Offset(0.0, 0.0),
              ),
            ],
            color: whiteColor,
          ),
          child: widget.widget,
        ),
      ),
    );
  }
}
