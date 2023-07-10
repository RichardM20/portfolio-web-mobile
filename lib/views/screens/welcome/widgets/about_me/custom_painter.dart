import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class PolygonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Color de fondo
    LinearGradient gradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        primaryColor,
        Color.fromARGB(255, 0, 31, 64),
      ],
    );

    paint.shader = gradient.createShader(rect);

    // Dibuja el polígono
    final path = Path();
    path.moveTo(100, 0);
    path.lineTo(200, 100);
    path.lineTo(100, 200);
    path.lineTo(0, 100);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(PolygonPainter oldDelegate) => false;
}
