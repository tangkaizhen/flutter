/**
 * MaterialApp Scaffold
 * 在flutter中所有的东西都要放在MaterialApp。其封装了所需要的一些Widget，一般作为顶层widget
 * Scaffold是flutter布局的基本实现
 */
import 'package:flutter/material.dart';
main(){
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter Demo')
        ),
        body: HomeCenter()
      )
    );
  }
}

class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        '你好flutter111',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          color: Color.fromRGBO(255, 0, 0, .5)
        ),
      )
    );
  }
}