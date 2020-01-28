import 'package:flutter/material.dart';
import 'package:movie_time_flutter_design/components/search_box.dart';
import 'package:movie_time_flutter_design/model/Movie.dart';

class PopularMovies extends StatefulWidget {
  List<Movie> __movies;

  PopularMovies(this.__movies);

  @override
  _PopularMoviesState createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: widget.__movies.asMap().entries.map((MapEntry map) {
            return Row(
              children: <Widget>[
                __buildCardItem(map.value),
                SizedBox(
                  width: 7,
                )
              ],
            );
          }).toList()),
    );
  }
  
  Widget __buildCardItem(Movie movie) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            child: ClipRRect(
              child: Image.asset(movie.getImagePath, fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(movie.getTitle, style: TextStyle(color: Color(0xFF2e1656), fontSize: 19, fontWeight: FontWeight.w400),)
      ],
    );
  }
}
