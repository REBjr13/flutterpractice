import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VLC clone",
          style: TextStyle(color: Colors.grey, fontSize: 15.0),
        ),
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
        elevation: 0.0,
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
        backgroundColor: Colors.white,
        elevation: 10.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepOrangeAccent[200],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_media,
                //color: Colors.deepOrangeAccent,
              ),
              label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note_sharp,
              ),
              label: "Audio"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_rounded,
              ),
              label: "Browse"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_play_rounded,
            ),
            label: "Playlists",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: "More"),
        ],
        iconSize: 20.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  CustomButton(),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
}
