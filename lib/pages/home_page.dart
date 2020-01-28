import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_time_flutter_design/components/menu_info.dart';
import 'package:movie_time_flutter_design/components/movies_section.dart';
import 'package:movie_time_flutter_design/components/new_movies_list.dart';
import 'package:movie_time_flutter_design/components/popular_movies_caroussel.dart';
import 'package:movie_time_flutter_design/components/search_box.dart';
import 'package:movie_time_flutter_design/model/Movie.dart';
import 'package:movie_time_flutter_design/model/MoviesCollection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MoviesCollection __collection = MoviesCollection();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 18, right: 18, bottom: 30),
                child: Column(
                    children:<Widget>[
                      SearchBox(),
                      SizedBox(height: 30),
                      MoviesSection(),
                      SizedBox(height: 30),
                      MenuInfo('Popular Movies'),
                      SizedBox(height: 15),
                      PopularMovies(__collection.getAllMovies()),
                      SizedBox(height: 20),
                      MenuInfo('New Movies'),
                      SizedBox(height: 15),
                      NewMovies(__collection.getAllMovies())
                    ]
                ),
              )
          ),
        ));
  }
}