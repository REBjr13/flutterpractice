import 'package:flutter/material.dart';
import 'package:flutter_application/classes/QuizApp.dart';

// ignore: unused_import
import 'ui/movie_ui/MovieApp.dart';

final ThemeData _appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey,
    primaryColor: Colors.lightGreen,
    backgroundColor: Colors.blueGrey,
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base.copyWith(
      headline1: base.headline1.copyWith(
        fontWeight: FontWeight.w600,
      ),
      bodyText2: base.bodyText1.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: Colors.black38,
        letterSpacing: 1.0,
      ),
      button: base.button.copyWith(
        fontSize: 14,
        letterSpacing: 3.0,
      ));
}

void main() => runApp(new MaterialApp(
      theme: _appTheme,
      debugShowCheckedModeBanner: true,
      home: Quiz(),
    ));
