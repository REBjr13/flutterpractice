import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application/classes/QuizApp.dart';
import 'package:flutter_application/parsing_json/json_parsing.dart';
import 'package:flutter_application/parsing_json/json_parsing_map.dart';
import 'package:flutter_application/ui/mortgage_app.dart';
import 'package:flutter_application/ui/util/colors.dart';
import 'package:flutter_application/weather_app/weather_app.dart';

// ignore: unused_import
import 'ui/movie_ui/MovieApp.dart';

final ThemeData _appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: secondaryBGreyLight,
    primaryColorLight: secondaryBGrey700,
    primaryColorDark: secondaryBGreyDark,
    hintColor: textOnPrimary,
    cardColor: secondaryBGrey700,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: primaryGreen900))),
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline1: base.headline1!.copyWith(
          fontWeight: FontWeight.w600,
        ),
        bodyText2: base.bodyText2!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          // color: Colors.black,
          letterSpacing: 0.5,
          fontFamily: "HinaMincho",
        ),
        bodyText1: base.bodyText1!.copyWith(
          color: textOnSecondary,
        ),
        button: base.button!.copyWith(
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
      home: Weather_App(),
    ));
