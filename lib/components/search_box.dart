import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    width: double.infinity,
    height: 45,
    child: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: <Widget>[
          Icon(Icons.search, color: Color(0xFFb39ed4), size: 30,), 
          SizedBox(width: 15),
          Text('Search', style: TextStyle(color: Color(0xFFb39ed4), fontSize: 22),)
        ],
      ),
    ),
    decoration: BoxDecoration(
        color: Color(0xFFf5efff), borderRadius: BorderRadius.circular(10)),
  );
}
