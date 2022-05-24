

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application/classes/QuizApp.dart';
import 'package:flutter_application/ui/mortgage_app.dart';
import 'package:flutter_application/ui/util/colors.dart';

// ignore: unused_import
import 'ui/movie_ui/MovieApp.dart';

final ThemeData _appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      //appBarTheme: _appBarTheme,
      textTheme: _appTextTheme(base.textTheme),
      colorScheme: _appTheme.colorScheme.copyWith(secondary: primaryGreenDark),
      primaryColor: primaryGreen900,
      scaffoldBackgroundColor: secondaryBackgroundWhite,
      hintColor: textOnPrimary,
      cardColor: secondaryLGreenDark,
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryGreenLight),
              borderRadius: BorderRadius.circular(14)
              )));
}

// AppBarTheme _appBarTheme = AppBarTheme(
//   elevation: 10,
//   centerTitle: true,
// );

_appTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline1: base.headline1.copyWith(
          fontWeight: FontWeight.w600,
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: textOnPrimary,
          letterSpacing: 1.0,
          fontFamily: "HinaMincho",
        ),
        bodyText1: TextStyle(fontSize: 15, fontFamily: "HinaMincho"),
        button: base.button.copyWith(
          fontSize: 14,
          letterSpacing: 3.0,
          fontFamily: "RobotoCondensed",
        ),
      )
      .apply(
        fontFamily: "ChakraPetch",
        displayColor: Colors.amber,
        bodyColor: Colors.white70,
      ); //overwrites everything in base.copyWith
}

void main() => runApp(new MaterialApp(
      theme: _appTheme,
      debugShowCheckedModeBanner: true,
      home: MortgageApp(),
    ));
