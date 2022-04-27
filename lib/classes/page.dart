import 'package:flutter/material.dart';
import '../model/movie.dart';

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
          MovieDetailsThumbnail(thumbnail: movie.images[2]),
          MovieDetailsHeaderWithPoster(movie: movie),
          MovieDetailsCast(movie: movie,)
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
            Icon(
              Icons.play_circle_outline,
              size: 100,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x525252), Color(0xFFFFFFFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          height: 100,
        )
      ],
    );
  }
}

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movies movie;

  const MovieDetailsHeaderWithPoster({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[2].toString()),
          SizedBox(width: 15),
          Expanded(
            child: MovieListDetailsHeader(movie: movie),
          )
        ],
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key key, this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(40);
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(poster), fit: BoxFit.cover))),
      ),
    );
  }
}

class MovieListDetailsHeader extends StatelessWidget {
  final Movies movie;

  const MovieListDetailsHeader({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "${movie.year} . ${movie.genre} . ",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
      Text(
        "${movie.title}",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.cyan,
          fontSize: 30,
        ),
      ),
      Text.rich(TextSpan(
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(
                text: movie.plot,
                style: TextStyle(
                  fontSize: 15,
                ))
          ]))
    ]);
  }
}

class MovieDetailsCast extends StatelessWidget {
  final Movies movie;

  const MovieDetailsCast({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MovieField(field: 'Cast', value: movie.actors),
          MovieField(field: 'Directors', value: movie.director),
          MovieField(field: 'awards', value: movie.awards),
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key key, this.field, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$field : ',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }
}
