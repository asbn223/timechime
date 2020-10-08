import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timechime/const/constant.dart';
import 'package:timechime/const/size_config.dart';
import 'package:timechime/screen/components/clock_painter.dart';

class AnalogTime extends StatefulWidget {
  @override
  _AnalogTimeState createState() => _AnalogTimeState();
}

class _AnalogTimeState extends State<AnalogTime> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: kShadowColor.withOpacity(0.14),
                  blurRadius: 64,
                )
              ]),
          child: CustomPaint(
            painter: ClockPainter(context, _dateTime),
          ),
        ),
      ),
    );
  }
}
