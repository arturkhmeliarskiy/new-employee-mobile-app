import 'package:flutter/material.dart';

class TigrisChatMessage extends CustomPainter {
  final Color color;
  TigrisChatMessage({
    required this.color,
  });
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintMountains = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(14, 0);
    path.quadraticBezierTo(
      8,
      4,
      8,
      6,
    );
    path.quadraticBezierTo(
      0,
      8,
      0,
      0,
    );

    canvas.drawPath(path, paintMountains);
    path = Path();
    path.moveTo(10, 10);
    path.addOval(Rect.fromCircle(center: const Offset(10, 10), radius: 15));
  }
}
