import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Period_Tracker//calendar.dart';
import 'package:pcod_helper/Screens/Period_Tracker/db.dart';
import 'package:pcod_helper/Screens/Period_Tracker/theme.dart';
import 'package:provider/provider.dart';




class Tracker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: notifier.isDarkTheme ? dark : light,
              home: Calendar(),
            );
          }),
    );
  }
}

