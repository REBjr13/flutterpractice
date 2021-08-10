import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if(hexColor.length == 0){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

//how to use

/*

Color colors1 = HexColor("b89045");
Color colors2 = HexColor("#b89045");
Color color3 = HexColor("88b89045");
 */
