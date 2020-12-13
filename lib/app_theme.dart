import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

//FontFamily
  static const String metroMedium = "Metropolis-Medium";

//Colors
  static const Color darkGrey = Color(0xFF4A4B4D);
  static const Color greyColor = Color(0xFFD6D6D6);
  static const Color lightGrey = Color(0xFF7C7D7E);
  static const Color primaryColor = Color(0xFFFC6011);
  static const Color whiteColor = Colors.white;

//FontSize
  static const double txtBodyA = 28;
  static const double txtBodyB = 12;
  static const double txtBodyC = 16;

//FontStyle
  static const TextStyle textBodyAStyle = TextStyle(
      fontSize: txtBodyA,
      fontFamily: metroMedium,
      color: darkGrey,
      fontWeight: FontWeight.bold);

  static const TextStyle textBodyBStyle = TextStyle(
      fontSize: txtBodyB,
      fontFamily: metroMedium,
      color: lightGrey,
      height: 1.35);

  static const TextStyle textBodyCStyle = TextStyle(
      fontFamily: metroMedium,
      fontSize: txtBodyC,
      color: whiteColor,
      fontWeight: FontWeight.bold);
}
