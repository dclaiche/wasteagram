import 'package:flutter/material.dart';

class Styles {
  static const double largeText = 30.0;
  static const double mediumLargeText = 20.0;
  static const double mediumText = 18.0;
  static const double smallText = 14.0;
  static const double superSmallText = 10.0;
  static const Color primaryColor = Color.fromARGB(255, 105, 104, 105);
  static const Color secondaryColor = Colors.deepPurple;
  static const Color fontColorLight = Color.fromARGB(255, 255, 255, 255);
  static const Color fontColorDark = Color.fromARGB(255, 8, 8, 8);
  static const String fontDefault = 'Roboto';

  
  static const TextStyle largeTextStyle = TextStyle(
    fontSize: largeText,
    fontFamily: fontDefault,
  );

  static const TextStyle mediumTextStyle = TextStyle(
      fontSize: mediumText, fontFamily: fontDefault);

  static const TextStyle smallTextStyle = TextStyle(
    fontSize: smallText,
    fontFamily: fontDefault,
  );

  static const TextStyle mediumLargeTextStyle = TextStyle(
      fontSize: mediumLargeText, color: fontColorDark, fontFamily: fontDefault);

  static const TextStyle mediumLargeTextStyleBold = TextStyle(
      fontSize: mediumLargeText,
      fontFamily: fontDefault,
      fontWeight: FontWeight.w900);

  static const TextStyle mediumLargeTextStyleItalic = TextStyle(
      fontSize: mediumLargeText,
      fontFamily: fontDefault,
      fontStyle: FontStyle.italic);

  static const TextStyle mediumTextStyleItalic = TextStyle(
      fontSize: mediumText,
      fontFamily: fontDefault,
      fontStyle: FontStyle.italic);

  static const TextStyle smallTextStyleItalic = TextStyle(
      fontSize: smallText,
      fontFamily: fontDefault,
      fontStyle: FontStyle.italic);

  static const TextStyle smallTextStyleBold = TextStyle(
      fontSize: smallText,
      fontFamily: fontDefault,
      fontWeight: FontWeight.w900);

  static const TextStyle mediumTextStyleBold = TextStyle(
      fontSize: mediumText,
      fontFamily: fontDefault,
      fontWeight: FontWeight.w900);

   static const TextStyle superSmallTextStyle = TextStyle(
      fontSize: superSmallText,
      fontFamily: fontDefault);
}