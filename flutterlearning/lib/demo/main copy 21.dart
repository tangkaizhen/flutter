/**
 * 常见的页面布局组件：
 * Column
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
    return Container(
      height: 800.0,
      width: 300.0,
      color: Colors.pink,
      child: Column(
        // 用法类似于flex
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconContainer(Icons.search),
          IconContainer(Icons.search),
          IconContainer(Icons.search),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget{
  var icon;
  var size=12.0;
  var color=Colors.red;
  IconContainer(this.icon,[this.size]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80.0,
      height: 80.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, color:Colors.white),
      ),
    );
  }
}