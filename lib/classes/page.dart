import 'package:flutter/material.dart';

//a route(page)
class MovieListDetails extends StatelessWidget {
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
            child: Text('Go back'),
            onPressed: () {

            },
          ),
        ),
      ),
    );
  }
}
