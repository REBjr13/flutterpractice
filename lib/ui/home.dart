import 'package:flutter/material.dart';

/*
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("How are you!"),
          backgroundColor: Colors.blue,
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        height: 70,
        width: 70,
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(200.0),
        ),
        child: Text('Button'),
      ),
    );
  }
}*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      child: Center(
        child: Container(
          height: 450,
          width: 345,
          child: Center(
            child: Text("Hello Robert!",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  backgroundColor: Colors.black12,
                  wordSpacing: 4.3,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic,
                )),
          ),
        ),
      ),
    );
  }
}
