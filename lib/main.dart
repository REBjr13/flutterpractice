import 'package:flutter/material.dart';
import 'package:flutter_application/classes/Bible.dart';
import 'package:flutter_application/classes/Tipcalculator.dart';
import 'package:flutter_application/classes/bizzcard.dart';

import 'ui/util/hexcolor.dart';

Color primaryPurple = HexColor("#7e57c2");
Color lightPurple = HexColor("#b085f5");
Color darkPurple = HexColor("#4d2c91");

Color secondaryBlue = HexColor("#42a5f5");
Color lightBlue = HexColor("#80d6ff");
Color darkBlue = HexColor("#4d2c91");

Color primaryText = HexColor("#ffffff");
Color secText = HexColor("#000000");




final ThemeData _appTheme = _buildAppTheme(); //creating a theme function

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    inputDecorationTheme: _input(base.inputDecorationTheme),
    brightness: Brightness.dark,
    accentColor: Colors.blueAccent,
    primaryColor: Colors.deepPurple,
    hintColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.lightGreen,
    textTheme: _appTextTheme(base.textTheme),
    appBarTheme: _appBar(base.appBarTheme),
    bottomNavigationBarTheme: _appNav(base.bottomNavigationBarTheme),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryBlue),

    //snackBarTheme: _appSnackBarTheme(base.snackBarTheme),
    // floatingActionButtonTheme: _appFloat(base.floatingActionButtonTheme),
    // iconTheme: _appIcon(base.iconTheme),
  );
}

InputDecorationTheme _input(InputDecorationTheme base) {
  return base.copyWith(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: lightPurple,
      )
    )

  );
}

BottomNavigationBarThemeData _appNav(BottomNavigationBarThemeData base) {
  return base.copyWith(
    backgroundColor: Colors.blueGrey,
  );
}

AppBarTheme _appBar(AppBarTheme base) {
  return base.copyWith(
    titleTextStyle: TextStyle(
      fontFamily: "HinaMincho",
    ),
    backgroundColor: Colors.deepPurpleAccent,
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
        fontFamily: "HinaMincho",
        //displayColor: Colors.black,
      );
}

void main() {
  //var db = new DataBaseHelper();

  //Add user
  // int saveduser = await db.saveUser(new User("Robert", "mmm"));
  //
  // print("User saved $saveduser");

  runApp(new MaterialApp(
    theme: _buildAppTheme(),
    debugShowCheckedModeBanner: false,
    home: Tipcalc(),
  ));
}
