/**
 * 图片组件
 * 
 * 圆角图片。圆形图片
 * 
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
          title: Text('flutter Demo'),
        ),
        body:HomeContainer(),
      )
    );
  }
}

class HomeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            'https://himg2.huanqiucdn.cn/attachment2010/2019/1012/20191012100532130.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover
            ),
        ),
      ),
    );
  }
}