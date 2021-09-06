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
import 'package:flutter_application/classes/mortgage_app.dart';

final ThemeData _appTheme = _buildAppTheme(); //creating a theme function

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    inputDecorationTheme: _input(base.inputDecorationTheme),
    brightness: Brightness.dark,
    accentColor: Colors.lightBlue,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.blueGrey,
    backgroundColor: Colors.lightGreen,
    textTheme: _appTextTheme(base.textTheme),
    appBarTheme: _appBar(base.appBarTheme),
    bottomNavigationBarTheme: _appNav(base.bottomNavigationBarTheme),
    buttonColor: Colors.grey,
    cardColor: Colors.white,

    //snackBarTheme: _appSnackBarTheme(base.snackBarTheme),
    // floatingActionButtonTheme: _appFloat(base.floatingActionButtonTheme),
    // iconTheme: _appIcon(base.iconTheme),
  );
}
InputDecorationTheme _input(InputDecorationTheme base){
  return base.copyWith(

  );
}


BottomNavigationBarThemeData _appNav(BottomNavigationBarThemeData base) {
  return base.copyWith(
    backgroundColor: Colors.blueGrey,
  );
}

AppBarTheme _appBar(AppBarTheme base) {
  return base.copyWith(
    backgroundColor: Colors.blueGrey,
  );
}

// IconThemeData _appIcon(IconThemeData base){
//   return base.copyWith(
//     color: Colors.white,
//   );
// }

// FloatingActionButtonThemeData _appFloat(FloatingActionButtonThemeData base){
//   return base.copyWith(
//     backgroundColor: Colors.grey,
//   );
// }

// SnackBarThemeData _appSnackBarTheme(SnackBarThemeData base){
//   return base.copyWith(
//     backgroundColor: Colors.lightGreen,
//     elevation: 30.0,
//   );
// }

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(

        headline1: base.headline5.copyWith(
          fontWeight: FontWeight.w300,
        ),

        headline6: base.headline5
            .copyWith(fontWeight: FontWeight.w100, fontSize: 20.0),
        bodyText2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          //fontStyle: FontStyle.italic,
          fontSize: 15.0,
        ),
        // button: base.button.copyWith(
        //   letterSpacing: 3.0,
        //   fontSize: 20.0,
        //   fontFamily: "HinaMincho",
        //
        // )
      )
      .apply(
        // overides the properties for all options
        fontFamily: "RobotoCondensed",
        //displayColor: Colors.black,
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
      home: MortgageApp(),
    ));
