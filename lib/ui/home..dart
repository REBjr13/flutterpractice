

import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Home"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu_open_sharp),
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

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.white60,
          child: Icon(Icons.access_alarm_outlined),

          onPressed: (){
    final snackBar = SnackBar(
    content: Text("Floating Action!"),
    backgroundColor: Colors.blue,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },

      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add up" ),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: "Link up"),
        BottomNavigationBarItem(icon: Icon(Icons.six_ft_apart_rounded), label: "Look up"),
      ],
      backgroundColor: Colors.white60,
      onTap: (int i){
    final snackBar = SnackBar(
    content: Text("Welcome"),
    backgroundColor: Colors.blue,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    debugPrint("Welcome: $i");
    },


      elevation: 100.0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(),
            // InkWell(
            //   child: Text(
            //     "Tap Me Fredrick!",
            //     textDirection: TextDirection.ltr,
            //     style: TextStyle(
            //       wordSpacing: 4.3,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 23.4,
            //       fontStyle: FontStyle.italic,
            //     ),
            //   ),
            //   onTap: () => debugPrint('true'),
            //   onLongPress: () => debugPrint('False'),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: (){
      final snackBar = SnackBar(
        content: Text("How are you!"),
      backgroundColor: Colors.blue,
      );
      
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
      
      child: Container(
        height: 70, width: 70,
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
