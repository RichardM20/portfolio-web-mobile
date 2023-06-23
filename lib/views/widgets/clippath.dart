import 'package:flutter/material.dart';

class CustomClipPath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();
    final height = size.height;
    final width = size.width;

    path.moveTo(width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, height);
    path.lineTo(width, height);

    final ovalPath = Path();
    final ovalRect = Rect.fromCenter(
      center: Offset(width / 2, height / 2),
      width: width,
      height: height,
    );

    ovalPath.addOval(ovalRect);

    path.addPath(ovalPath, Offset.zero);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomClipPath oldDelegate) => false;
}
