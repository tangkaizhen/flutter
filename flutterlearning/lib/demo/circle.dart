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
          child: Text(
            '我是唐凯震',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
             ),
            ),

          decoration: BoxDecoration(
            color: Colors.red,
            // 圆形
            shape: BoxShape.circle
          ),
          width: 160,
          height: 160,
        ),
      ),
    );
  }
}