import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timechime/const/theme_data.dart';
import 'package:timechime/screen/model/theme.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (ctx, theme, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          title: 'TimeChime',
          home: HomeScreen(),
        ),
      ),
    );
  }
}
