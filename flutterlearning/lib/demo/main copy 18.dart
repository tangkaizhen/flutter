/**
 * 常见的页面布局组件：
 * Row，Column
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
      width: 400.0,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconContainer(Icons.search),
          IconContainer(Icons.search),
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
  var size=32.0;
  var color=Colors.red;
  IconContainer(this.icon,[this.size]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size:this.size,color:Colors.white),
      ),
    );
  }
}