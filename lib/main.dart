import 'package:flutter/material.dart';
import 'package:timechime/const/theme_data.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      title: 'TimeChime',
      home: HomeScreen(),
    );
  }
}
