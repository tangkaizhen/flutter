import 'package:flutter/material.dart';
import 'Demo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title:'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: Demo()
      ),
    );
  }
}