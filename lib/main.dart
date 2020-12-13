//Flutter Imports
import 'package:flutter/material.dart';
import 'package:mealmonkey/screens/main_screens/on_boarding.dart';
//Local Imports
import 'constants/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: OnBoardingPage(),
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}
