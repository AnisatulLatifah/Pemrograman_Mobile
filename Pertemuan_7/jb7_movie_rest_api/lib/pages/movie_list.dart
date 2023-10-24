import 'package:flutter/material.dart';
import 'package:jb7_movie_rest_api/pages/movie_detail.dart';
import 'package:jb7_movie_rest_api/service/http_service.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int movieCount = 0;
  List movies = [];
  String result = '';
  HttpService? service;

  Future initialize() async {
    movies = [];
    movies = (await service?.getPopularMovies())!;
    setState(() {
      movieCount = movies.length;
      movies = movies;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Popular Movies',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: (this.movieCount == null) ? 0 : this.movieCount,
            itemBuilder: (context, int position) {
              return Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: double.infinity,
                        height: 250,
                        child: Image.network(
                          movies[position].posterPath,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(movies[position].title),
                      subtitle: Text('Rating = ' +
                          movies[position].voteAverage.toString()),
                      onTap: () {
                        MaterialPageRoute route = MaterialPageRoute(
                            builder: (_) =>
                                MovieDetail(movie: movies[position]));
                        Navigator.push(context, route);
                      },
                    ),
                  ],
                ),
              );
            }));
  }
}
