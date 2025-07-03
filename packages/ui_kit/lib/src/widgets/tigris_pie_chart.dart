import 'dart:math' as math;

import 'package:flutter/material.dart';

class TigrisPieChart extends StatelessWidget {
  final int maximumAmount;
  final int level;
  final Color color;
  const TigrisPieChart({
    required this.maximumAmount,
    required this.level,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrains) => SizedBox(
        height: constrains.heightConstraints().maxHeight,
        width: constrains.widthConstraints().maxWidth,
        child: CustomPaint(painter: PieChart(maximumAmount, level, color)),
      ),
    );
  }
}

class PieChart extends CustomPainter {
  final int maximumAmount;
  final int level;
  final Color color;

  PieChart(
    this.maximumAmount,
    this.level,
    this.color,
  );
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final activeStep = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.0
      ..color = color;
    final notActiveStep = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.0
      ..color = color.withOpacity(0.2);

    const startingPoint = -math.pi / 2;
    const interval = 0.05;
    final amount = 1 / maximumAmount;
    final sectorSize = getRadians(amount);
    for (int i = 0; i < maximumAmount; ++i) {
      canvas.drawArc(
        rect,
        startingPoint + sectorSize * i,
        sectorSize - interval,
        false,
        i < level ? activeStep : notActiveStep,
      );
    }
  }

  double getRadians(double value) {
    return (360 * value) * math.pi / 180;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
