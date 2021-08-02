import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }


  Container _getCard() {
    return Container(
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Robert Ekine'),
          Text('20'),
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

  Container _getAvatar(){
    return Container(
      width: 100,
      height: 100,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Colors.black,width: 1.0),
        image: DecorationImage(image: null),
      ),
    );
  }
}
