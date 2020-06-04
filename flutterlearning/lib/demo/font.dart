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
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red
          ),
          // 给单独的文字应用样式
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white
              ),
              children: [
                TextSpan(
                  text: 'Lorem'
                ),
                TextSpan(
                  text: 'ipsum',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 46
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}