import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timechime/screen/components/analog_clock.dart';
import 'package:timechime/screen/components/timehm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Kathmandu, Nepal | GMT +5:45",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeHM(),
          AnalogTime(),
        ],
      ),
    );
  }
}
