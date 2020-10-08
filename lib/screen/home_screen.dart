import 'package:flutter/material.dart';
import 'package:timechime/const/size_config.dart';

import 'components/appbaradd.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appBarAdd(context),
      body: Body(),
    );
  }
}
