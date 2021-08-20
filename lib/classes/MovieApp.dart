import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final List anime = [
    'One Piece',
    'Idaten',
    'Boku no Hero',
    'Naruto',
    'Black Clover',
    'Nanatsu no Taizai',
    'One Punch Man',
    'Dragon Ball',
    'Gintama',
    'Bleach',
    'Mob Psyhco'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie App'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.grey,
        body: ListView.builder(
            itemCount: anime.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5.0,
                color: Colors.white,
                child: ListTile(
                  title: Text(anime[index]),
                  subtitle: Text('Sub'),
                  trailing: Text('Text'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'R'
                    ),
                  )
                ),
              );
            }));
  }
}