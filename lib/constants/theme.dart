import 'package:flutter/material.dart';
import 'package:groceries/constants/themecolors.dart';

class ApplicationTheme {
  static final ThemeData apptheme = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: appBarColor),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26,),
        headline2: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 26,),
        headline3: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 24,),
        headline4: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 22,),
        headline5: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 18,),
        headline6: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 16,),
        bodyText1: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 17,),
        bodyText2: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,),
      )
      );
}
