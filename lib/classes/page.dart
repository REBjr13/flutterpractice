import 'package:flutter/material.dart';

//a route(page)
class MovieListDetails extends StatelessWidget {

  final String movieName;

  const MovieListDetails({Key key, this.movieName}) : super(key: key);

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
            child: Text(this.movieName),
            onPressed: () {
              Navigator.pop(context); //pop removes from stack
            },
          ),
        ),
      ),
    );
  }
}
