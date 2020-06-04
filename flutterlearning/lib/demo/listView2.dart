/**
 *  水平列表
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
      // 默认是垂直列表
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.red
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.black,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.blue
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.deepPurpleAccent
        ),
      ],
    )
    );
  }
}