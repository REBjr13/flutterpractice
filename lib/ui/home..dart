import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(
              icon: Icon(Icons.menu_rounded),
              onPressed: () => debugPrint("button tapped")),
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () => debugPrint("share button tapped")),
          IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () => debugPrint("account button tapped")),
        ],
        centerTitle: false,
        backgroundColor: Colors.purpleAccent.shade100,

      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text(
                "Tap Me Fredrick!",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  wordSpacing: 4.3,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () => debugPrint('true'),
            )
          ],
        ),
      ),
    );
  }
}

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
