import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timechime/const/constant.dart';
import 'package:timechime/const/size_config.dart';
import 'package:timechime/screen/components/clock_painter.dart';
import 'package:timechime/screen/model/theme.dart';

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
    return Stack(
      children: [
        Padding(
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
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Consumer<ThemeModel>(
            builder: (context, theme, _) => InkWell(
              onTap: theme.toggleTheme,
              child: Image.asset(
                theme.isLightTheme
                    ? 'assets/images/sun.png'
                    : 'assets/images/moon-and-stars.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
          top: 50,
          left: 0,
          right: 0,
        )
      ],
    );
  }
}
