/**
 * 常见的页面布局组件：
 * Expend
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 300.0,
      color: Colors.pink,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.search,Colors.red)
          ),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.search,Colors.yellow)
          ),
          Expanded(
            flex: 1,
            child: IconContainer(Icons.search,Colors.black)
          )
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget{
  var icon;
  var size=12.0;
  var color;

  IconContainer(this.icon,this.color);
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