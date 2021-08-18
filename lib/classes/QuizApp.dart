import 'package:flutter/material.dart';
import 'package:flutter_application/model/question.dart';
import 'package:flutter_application/ui/util/hexcolor.dart';

Color blue1 = HexColor("#345867");

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List questions = [
    Question.name("I was born in 2002?", false),
    Question.name("Junior is part of my name?", true),
    Question.name("I live in Abuja?", false),
    Question.name("I have 2 brothers?", false),
    Question.name("I am 5.8' tall?", false),
    Question.name("I love football?", true),
    Question.name("I love anime?", true),
    Question.name("I love anime?", true),
  ];

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child:
                      Image.asset("images/coat.jpeg", height: 280, width: 180)),
              Container(
                height: 120.0,
                child: Center(
                  child: Text(questions[0],
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold)),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
