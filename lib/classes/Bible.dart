import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(verses[_index % verses.length]),
            TextButton.icon(
              onPressed: _showVerse,
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: Text("Next"),
            )
          ],
        ),
      ),
    );
  }
  void _showVerse() {
//increment counter by 1
    setState((){
      _index += 1;

      // if(_index == 7){
      //   _index = 0;
      //}
    });
}
}

int _index = 0;

List verses = [
  "Men will be lovers of themselves.—2 Tim. 3:2",
  "I am distressed and extremely downcast; I walk around sad all day long.—Ps. 38:6.",
  "We are not ignorant of [Satan’s] designs.—2 Cor. 2:11",
  "[Teach] them to observe all the things I have commanded you.—Matt. 28:20",
  "Whoever approaches God must believe that he is.—Heb. 11:6.",
  "Should we not more readily submit ourselves to the Father?—Heb. 12:9.",
  "In all the nations, the good news has to be preached first.—Mark 13:10.",
  "Above all the things that you guard, safeguard your heart.—Prov. 4:23.",
  "As iron sharpens iron, so one man sharpens his friend.​—Prov. 27:17."

];
