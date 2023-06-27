import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class PolygonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Color de fondo
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 9, 73, 122),
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
