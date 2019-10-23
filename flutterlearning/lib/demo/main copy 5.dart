/**
 * Container :类似于div
 */
import 'package:flutter/material.dart';
main(){
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
        body:HomeContainer()
      )
    );
  }
}

class HomeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('我是一个txt'),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.green,
            width: 2.0
          )
        ),
      ),
    );
  }
}