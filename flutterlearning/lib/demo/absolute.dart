import 'package:flutter/material.dart';

// 这个主要是模拟绝对定位

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 240,
      color: Colors.green,
      child: Stack(
        children: <Widget>[
          Positioned(
            // 绝对定位
            child: Container(
              child: Text('Lorem'),
              decoration: BoxDecoration(
                color: Colors.red
              ),
              padding: EdgeInsets.all(16)
            ),
            left: 10,
            top: 20,
          )
        ],
      ),
    );
  }
}