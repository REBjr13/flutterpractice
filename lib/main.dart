import 'package:flutter/material.dart';
import 'package:flutter_application/classes/QuizApp.dart';
void main() => runApp(new MaterialApp(
  theme: ThemeData(
    brightness: Brightness.dark,
  ),
      debugShowCheckedModeBanner: false,
      home: Quiz(),
      ));

