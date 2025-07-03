import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:view_models/view_models.dart';

class TigrisCircularWorkedHoursDiagram extends CustomPainter {
  final String sortTime;
  final WorkInfoDataModel workInfo;

  TigrisCircularWorkedHoursDiagram({
    required this.sortTime,
    required this.workInfo,
  });

  @override
  bool shouldRepaint(TigrisCircularWorkedHoursDiagram oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2) - 10;

    final total =
        workInfo.content.map((e) => e.workedHoursDataModel.total).reduce(
              (value, element) => value + element,
            );
    final month =
        workInfo.content.map((e) => e.workedHoursDataModel.month).reduce(
              (value, element) => value + element,
            );
    final week =
        workInfo.content.map((e) => e.workedHoursDataModel.week).reduce(
              (value, element) => value + element,
            );

    final Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      center,
      radius,
      outerCircle,
    ); // this draws main outer circle

    final List<double> list = [];

    if (sortTime == 'home_screen.total'.tr()) {
      workInfo.content.forEach((element) {
        final degre = (360 * element.workedHoursDataModel.total) / total;
        final double angle = 2 * pi * (degre / 360);
        if (angle > 0.00) {
          list.add(angle);
          canvas.drawArc(
            rect,
            list.indexOf(angle) == 0
                ? -pi / 2
                : list.indexOf(angle) == 1
                    ? -pi / 2 + list[list.indexOf(angle) - 1] + 0.1
                    : -pi / 2 +
                        list.reduce(
                          (value, element) => value + element,
                        ) -
                        list[list.length - 1],
            list.indexOf(angle) == 0
                ? angle + 0.06
                : list.indexOf(angle) == 1
                    ? angle - 0.13
                    : angle - 0.04,
            false,
            Paint()
              ..strokeWidth = 10
              ..color = Color(int.parse(element.colorAgency))
              ..style = PaintingStyle.stroke,
          );
        }
      });
    } else if (sortTime == 'home_screen.month'.tr()) {
      workInfo.content.forEach((element) {
        final degre = (360 * element.workedHoursDataModel.month) / month;
        final double angle = 2 * pi * (degre / 360);
        if (angle > 0.00) {
          list.add(angle);
          canvas.drawArc(
            rect,
            list.indexOf(angle) == 0
                ? -pi / 2
                : list.indexOf(angle) == 1
                    ? -pi / 2 + list[list.indexOf(angle) - 1] + 0.1
                    : -pi / 2 +
                        list.reduce(
                          (value, element) => value + element,
                        ) -
                        list[list.length - 1],
            list.indexOf(angle) == 0
                ? angle + 0.06
                : list.indexOf(angle) == 1
                    ? angle - 0.13
                    : angle - 0.04,
            false,
            Paint()
              ..strokeWidth = 10
              ..color = Color(int.parse(element.colorAgency))
              ..style = PaintingStyle.stroke,
          );
        }
      });
    } else {
      workInfo.content.forEach((element) {
        final degre = (360 * element.workedHoursDataModel.week) / week;
        final double angle = 2 * pi * (degre / 360);
        if (angle > 0.00) {
          list.add(angle);
          canvas.drawArc(
            rect,
            list.indexOf(angle) == 0
                ? -pi / 2
                : list.indexOf(angle) == 1
                    ? -pi / 2 + list[list.indexOf(angle) - 1] + 0.1
                    : -pi / 2 +
                        list.reduce(
                          (value, element) => value + element,
                        ) -
                        list[list.length - 1],
            list.indexOf(angle) == 0
                ? angle + 0.06
                : list.indexOf(angle) == 1
                    ? angle - 0.13
                    : angle - 0.04,
            false,
            Paint()
              ..strokeWidth = 10
              ..color = Color(int.parse(element.colorAgency))
              ..style = PaintingStyle.stroke,
          );
        }
      });
    }
  }
}
