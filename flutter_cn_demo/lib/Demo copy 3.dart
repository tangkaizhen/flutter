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
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Center(
        child: Container(
          child: Text(
            'Lornasd'
          ),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red,
            // 盒阴影
            boxShadow: [
              // 可以多个boxShadow叠加
              BoxShadow(
                color: Colors.red,
                // 便宜量
                offset: Offset(0, 2),
                // 模糊距离
                blurRadius: 10
              )
            ]
          ),
        ),
      ),
    );
  }
}