import 'package:flutter/material.dart';
import 'package:flutter_application/ui/util/hexcolor.dart';

Color blue1 = HexColor("#345867");

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: blue1,
        shadowColor: Colors.grey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: [
            Image.asset("images/reb.jpeg"),
          ],
        ),
      ),
    );
  }
}
