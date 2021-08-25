import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/ui/util/hexcolor.dart';
import 'package:flutter_application/classes/MovieApp.dart';
import 'package:flutter_application/classes/QuizApp.dart';
import 'package:flutter_application/ui/home.dart';
import 'package:flutter_application/classes/VLCclone.dart';
import 'package:flutter_application/classes/bizzcard.dart';
import 'package:flutter_application/classes/Bible.dart';
import 'package:flutter_application/classes/Tipcalculator.dart';


final ThemeData _appTheme = _buildAppTheme();//creating a theme functuon

ThemeData _buildAppTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.lightBlue,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.red,
    backgroundColor: Colors.lightBlue,

    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 15.0,
      ),
    ),
  );
}


void main() => runApp(new MaterialApp(
  theme: _buildAppTheme(),

    // theme: ThemeData(
    //     brightness: Brightness.dark,
    //   primaryColor: Colors.lightGreen[300],
    //
    //   textTheme: TextTheme(
    //     button: TextStyle(
    //       fontSize: 20,
    //       fontWeight: FontWeight.bold,
    //     ),
    //
    //     bodyText2: TextStyle(
    //       fontSize: 24.5,
    //       color: Colors.teal,
    //       fontWeight: FontWeight.bold,
    //
    //     ),
    //   ),
    //
    // ),
    debugShowCheckedModeBanner: false,
      home:  Quiz(),
    ));
