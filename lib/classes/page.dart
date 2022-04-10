import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'MovieApp.dart';

//a route(page)
class MovieListDetails extends StatelessWidget {
  final String movieName;
  final Movies movie;

  const MovieListDetails({Key key, this.movieName, this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Movie'),
        backgroundColor: Colors.grey,
      ),

      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[2])
        ],
      ),
      // body: Center(
      //   child: Container(
      //     child: ElevatedButton(
      //       child: Text(this.movie.rated),
      //       onPressed: () {
      //         Navigator.pop(context); //pop removes from stack
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class MovieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            Icon(Icons.play_circle_outline, size: 100, color: Colors.white,),
          ],
        )
      ],
    );
  }
}
