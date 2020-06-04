/**
 * 常见的页面布局组件：
 * Row，Column
 */
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget{

  IconContainer(this.icon,[this.size]);

  var icon;
  var size=32.0;

  var color=Colors.red;
  @override
  Widget build(BuildContext context) {
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