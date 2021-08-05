import 'package:flutter/material.dart';

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
        centerTitle: false,
        toolbarOpacity: 1.0,
        actions: [
          IconButton(
            icon: Icon(Icons.attachment_sharp),
            onPressed: () => debugPrint("You"),
          )
        ],
      ),
      backgroundColor: Colors.greenAccent[400],
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Info",
          )
        ],
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 400,
      height: 300,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.deepOrange, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Robert Ekine',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Colors.white24),
          ),
          Text('20',
              style: TextStyle(
                color: Colors.white24,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle),
              Text("Twitter & Insta: @rebjr13"),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.black, width: 1.0),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300/"),
              fit: BoxFit.cover)),
    );
  }
}
