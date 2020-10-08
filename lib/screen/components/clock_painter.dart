import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dt;

  ClockPainter(this.context, this.dt);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //Second Calculation
    // width * 0.4 define our second line height
    // second * 6 define 360 / 60 =  6
    double minX = centerX + size.width * 0.35 * cos((dt.minute * 6) * pi / 180);
    double minY = centerY + size.width * 0.35 * sin((dt.minute * 6) * pi / 180);

    //Minutes Line
    canvas.drawLine(
      center,
      Offset(minX, minY),
      Paint()
        ..color = Theme.of(context).accentColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    //Hours Calculation

    double hourX = centerX +
        size.width * 0.3 * cos((dt.hour * 30 + dt.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width * 0.3 * sin((dt.hour * 30 + dt.minute * 0.5) * pi / 180);

    //Hours Line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    //Second Calculation
    // width * 0.4 define our second line height
    // second * 6 define 360 / 60 =  6
    double secondX =
        centerX + size.width * 0.4 * cos((dt.second * 6) * pi / 180);
    double secondY =
        centerY + size.width * 0.4 * sin((dt.second * 6) * pi / 180);

    //Seconds Line
    canvas.drawLine(center, Offset(secondX, secondY),
        Paint()..color = Theme.of(context).primaryColor);

    //Center Dot
    Paint dot = Paint()..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dot);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dot);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
