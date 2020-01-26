import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_time_flutter_design/components/menu_info.dart';
import 'package:movie_time_flutter_design/components/movies_section.dart';
import 'package:movie_time_flutter_design/components/search_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Search Box Component
              Padding(
                padding: EdgeInsets.only(top: 30, left: 18, right: 18),
                child: SearchBox(),
              ),
              // Movies Section List View Horizontal
              Padding(
                  padding: EdgeInsets.only(top: 30, left: 18, right: 18),
                  child: MoviesSection()),
              // Popular Movies Text
              Padding(
                  padding: EdgeInsets.only(top: 30, left: 18, right: 18),
                  child: MenuInfo('Popular Movies')),
              Padding(
                  padding: EdgeInsets.only(top: 30, left: 18, right: 18),
                  child: MenuInfo('New Movies')),
              // New Movies
            ],
          ),
        ));
  }
}
