/**
 *  水平列表
 */
import 'package:flutter/material.dart';
main(){
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('flutter Demo'),
        ),
        body:HomeContainer(),
      )
    );
  }
}

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