import 'package:flutter/material.dart';
import 'package:flutter_application/classes/page.dart';

import 'package:flutter_application/model/movie.dart';

class Movie extends StatelessWidget {
  final List<Movies> movieList = Movies.getMovies();

  final List anime = [
    'One Piece',
    'Idaten Deities know only peace',
    'Boku no Hero',
    'Naruto',
    'Black Clover',
    'Nanatsu no Taizai',
    'One Punch Man',
    'Dragon Ball',
    'Gintama',
    'Bleach',
    'Mob Psyhco',
    'Cells at work'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Movie App', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blueGrey.shade900),
        backgroundColor: Colors.blueGrey.shade400,
        body: ListView.builder(
            itemCount: movieList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5.0,
                color: Colors.blue,
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieListDetails(
                                    movieName: movieList[index].title,
                                movie: movieList[index],
                                  )));
                    },
                    // onTap: ()=> {
                    //   debugPrint('${anime.elementAt(index)}'),
                    // },
                    title: Text(movieList[index].title),
                    subtitle: Text('${movieList[index].title}'),
                    trailing: Text('....'),
                    leading: CircleAvatar(
                      child: Container(
                        decoration: BoxDecoration(
                            //color: Colors.blue,
                            borderRadius: BorderRadius.circular(60)),
                        child: Text('B'),
                      ),
                      backgroundColor: Colors.grey,
                    )),
              );
            }));
  }
}
