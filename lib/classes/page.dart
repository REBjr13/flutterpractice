import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'MovieApp.dart';

//a route(page)
class MovieListDetails extends StatelessWidget {
  final String movieName;
  final Movies movie;

  const MovieListDetails({Key key, this.movieName, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Movie'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text(this.movie.rated),
            onPressed: () {
              Navigator.pop(context); //pop removes from stack
            },
          ),
        ),
      ),
    );
  }
}
