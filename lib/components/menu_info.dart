import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuInfo extends StatelessWidget {
  String __text;

  MenuInfo(this.__text);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          __text,
          style: TextStyle(
              color: Color(0xFF7835e5),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        Icon(
          FontAwesomeIcons.longArrowAltRight,
          color: Color(0xFFc5a2fd),
        )
      ],
    );
  }
}
