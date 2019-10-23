/**
 * 常见的页面布局组件：
 * Padding,Row，Column
 */
import 'package:flutter/material.dart';

main() {
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('flutter Demo'),
      ),
      body: HomeContainer(),
    ));
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GridView.count(
      crossAxisCount: 3,
      // 配置宽高比
      childAspectRatio: .8,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(width: 30, height: 30, color: Colors.yellow),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(width: 30, height: 30, color: Colors.yellow),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(width: 30, height: 30, color: Colors.yellow),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(width: 30, height: 30, color: Colors.yellow),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(width: 30, height: 30, color: Colors.yellow),
        ),
      ],
    ),
    padding: EdgeInsets.fromLTRB(0, 0, 10, 0)
    );
  }
}
