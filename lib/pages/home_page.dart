import 'package:flutter/material.dart';
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
              Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: SearchBox(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: MoviesSection()
              ),
            ],
          ),
        ));
  }
}
