import 'package:flutter/material.dart';

class MoviesSection extends StatefulWidget {
  @override
  _MoviesSectionState createState() => _MoviesSectionState();
}

class _MoviesSectionState extends State<MoviesSection> {
  int indexSelected = 0;
  List<String> sections = ['All', 'Action', 'Comedy', 'Horror', 'Drama'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: sections.asMap().entries.map((MapEntry map) {
            return Row(
              children: <Widget>[
                __buildListItem(map.value, map.key == indexSelected, map.key),
                SizedBox(
                  width: 7,
                )
              ],
            );
          }).toList()),
    );
  }

  Widget __buildListItem(String category, bool selected, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexSelected = index;
        });
      },
      child: Container(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(category,
                style: TextStyle(
                    color: selected ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        decoration: BoxDecoration(
          color: selected ? Color(0xFF6518e2) : Color(0xFFefe5ff),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
