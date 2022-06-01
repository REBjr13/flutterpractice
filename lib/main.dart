import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application/classes/QuizApp.dart';
import 'package:flutter_application/ui/mortgage_app.dart';

// ignore: unused_import
import 'ui/movie_ui/MovieApp.dart';

final ThemeData _appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.green,
    primaryColor: Colors.lightGreen,
    backgroundColor: Colors.green,
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline1: base.headline1.copyWith(
          fontWeight: FontWeight.w600,
        ),
        bodyText2: base.bodyText1.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.black38,
          letterSpacing: 1.0,
          fontFamily: "HinaMincho",
        ),
        button: base.button.copyWith(
          fontSize: 10,
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
