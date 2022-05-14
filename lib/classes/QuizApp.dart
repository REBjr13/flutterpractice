import 'package:flutter/material.dart';
import 'package:flutter_application/model/question.dart';

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
    Question.name("I can swim?", false),
  ];

  int _currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz App",
          // style: TextStyle(fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        //backgroundColor: blue1,
        //shadowColor: Colors.grey,
      ),
      //backgroundColor: Colors.blueGrey,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.lightGreen.shade400,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 120.0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        questions[_currentQuestionIndex % questions.length]
                            .questionText,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _previousQuestion(),
                    // color: Colors.blue,
                    child: Icon(Icons.arrow_back),
                  ),
                  ElevatedButton(
                    onPressed: () => _checkAnswer(true),
                    // color: Colors.blue,
                    child: Text("True"),
                  ),
                  ElevatedButton(
                    onPressed: () => _checkAnswer(false),
                    // color: Colors.blue,
                    child: Text("False"),
                  ),
                  ElevatedButton(
                    onPressed: () => _nextQuestion(),
                    // color: Colors.black,
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool userChoice) {
    if (userChoice == questions[_currentQuestionIndex].isCorrect) {
      //correct answer

      final snackBar = SnackBar(
        elevation: 10.0,
        content: Text(
          "correct",
          style: TextStyle(color: Colors.black54),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: Colors.greenAccent.shade100,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      _updateQuestion();
    } else {
      final snackBar = SnackBar(
        elevation: 10.0,
        duration: Duration(milliseconds: 500),
        content: Text("wrong"),
        backgroundColor: Colors.blue,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _updateQuestion();
    }
  }

  _updateQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
  }

  _nextQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
  }

  _previousQuestion() {
    setState(() {
      _currentQuestionIndex--;
    });
  }
}
