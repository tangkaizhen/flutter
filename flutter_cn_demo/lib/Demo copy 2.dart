import 'package:flutter/material.dart';

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
      color: Colors.grey,
      child: Center(
        child: Container(
          child: Text('是发大V从'),
          decoration: BoxDecoration(
            color: Colors.red,
            // 圆角
            borderRadius: BorderRadius.circular(8)
          ),
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}