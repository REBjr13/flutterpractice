import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VLC"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.grey,
              onPressed: () => debugPrint("button tapped")),
          IconButton(
              icon: Icon(Icons.replay),
              color: Colors.grey,
              onPressed: () => debugPrint("button tapped")),
          IconButton(
              icon: Icon(Icons.filter_list_rounded),
              color: Colors.grey,
              onPressed: () => debugPrint("button tapped")),
          IconButton(
              icon: Icon(Icons.grid_view),
              color: Colors.grey,
              onPressed: () => debugPrint("share button tapped")),
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.grey,
              onPressed: () => debugPrint("account button tapped")),
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
    foregroundColor: Colors.lightGreenAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent[200],
        child: Icon(
          Icons.play_arrow,
          size: 40.0,
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Floating Action!"),
            backgroundColor: Colors.blue,
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility, color: Colors.deepOrangeAccent,), label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note_sharp,  color: Colors.deepOrangeAccent,), label: "Audio"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_rounded,
                color: Colors.deepOrangeAccent,
              ),
              label: "Browse"),
          //BottomNavigationBarItem(icon: Icon(Icons.folder_rounded), label: "Playlists"),
          // BottomNavigationBarItem(icon: Icon(Icons.folder_rounded), label: "More"),
        ],
        iconSize: 15.0,
        backgroundColor: Colors.white,
        onTap: (int i) {
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
