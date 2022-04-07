import 'dart:html';

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
              return Stack(children: [
                movieCard(movieList[index], context),
                Positioned(
                    top: 10, child: movieImage(movieList[index].images[2])),
              ]);
              // return Card(
              //    elevation: 5.0,
              //    color: Colors.blue,
              //    child: ListTile(
              //        onTap: () {
              //          Navigator.push(
              //              context,
              //              MaterialPageRoute(
              //                  builder: (context) => MovieListDetails(
              //                        movieName: movieList[index].title,
              //                    movie: movieList[index],
              //                      )));
              //        },
              //        // onTap: ()=> {
              //        //   debugPrint('${anime.elementAt(index)}'),
              //        // },
              //        title: Text(movieList[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
              //        subtitle: Text('${movieList[index].plot}'),
              //        trailing: Text('....'),
              //        leading: CircleAvatar(
              //          child: Container(
              //            width: 200,
              //            height : 200,
              //            decoration: BoxDecoration(
              //              image: DecorationImage(
              //               image: NetworkImage(movieList[index].images[2]), fit: BoxFit.fill
              //              ),
              //                borderRadius: BorderRadius.circular(60)),
              //            child: null,
              //          ),
              //          backgroundColor: Colors.grey,
              //        )),
              //  );
            }));
  }

  Widget movieCard(Movies movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 70.0),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(movie.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white,
                      ),),
                      Text("Rating: ${movie.imdbRatings} / 10", style: TextStyle(
                        fontSize: 17, color: Colors.grey
                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Released: ${movie.released}"),
                      Text("${movie.runtime}"),
                      Text("${movie.rated}")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieListDetails(
                      movieName: movie.title,
                      movie: movie,
                    )));
      },
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imageUrl ?? ''), fit: BoxFit.cover)),
    );
  }
}
