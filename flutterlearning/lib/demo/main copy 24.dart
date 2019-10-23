/**
 * 页面布局
 * 可以通过给Alignment指定参数，实现定位，注意参数的大小是（-1,1）
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
    return Center(
      child: Stack(
        alignment: Alignment(0,1),
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            '我是一个文本',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            )
            )
        ],
      ),
    );
  }
}
