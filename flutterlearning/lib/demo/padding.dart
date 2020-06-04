/**
 * 常见的页面布局组件：
 * Padding,Row，Column
 */
import 'package:flutter/material.dart';

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
          ],
        ),
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0));
  }
}
