import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    width: double.infinity,
    height: 45,
    child: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.search, color: Color(0xFFb39ed4), size: 30,), 
          SizedBox(width: 15),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xFFb39ed4), fontSize: 20),
              ),
              cursorColor: Color(0xFFb39ed4),
              style: TextStyle(color: Color(0xFFb39ed4), fontSize: 20),
            ), 
            height: double.infinity, 
            width: 200,
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
        color: Color(0xFFf5efff), borderRadius: BorderRadius.circular(10)),
  );
}
