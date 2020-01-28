import 'package:flutter/material.dart';
import 'package:movie_time_flutter_design/components/search_box.dart';
import 'package:movie_time_flutter_design/model/Movie.dart';

class NewMovies extends StatefulWidget {
  List<Movie> __movies;

  NewMovies(this.__movies);

  @override
  _NewMoviesState createState() => _NewMoviesState();
}

class _NewMoviesState extends State<NewMovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: widget.__movies.asMap().entries.map((MapEntry map) {
           return __buildCardItem(map.value);
          }).toList()),
    );
  }

  Widget __buildCardItem(Movie movie) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    child: Image.asset(movie.getImagePath, fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                SizedBox(width: 20,),
                Text(movie.getTitle, style: TextStyle(color: Color(0xFF2e1656), fontSize: 20, fontWeight: FontWeight.w400),)
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}