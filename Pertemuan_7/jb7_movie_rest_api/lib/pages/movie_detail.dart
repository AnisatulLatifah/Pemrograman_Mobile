import 'package:flutter/material.dart';
import 'package:jb7_movie_rest_api/models/movie.dart';
import 'package:jb7_movie_rest_api/pages/rating.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title!),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Image.network(movie.posterPath!),
            ),
            Container(
              child: Text(
                movie.overview!,
                textAlign: TextAlign.justify,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: movie.voteAverage != 'N/A'
                  ? StarRating(
                      color: Theme.of(context).primaryColor,
                      rating: movie.voteAverage!,
                      starCount: 10,
                    )
                  : Container(),
            )
          ],
        )),
      ),
    );
  }
}