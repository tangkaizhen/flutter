/**
 * 
 * flutter的设计思想来源于react
 *  动态列表：
 * 1，循环语句 
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
  
  // 通过_,可以将一个属性或者方法定义成私有
  List<Widget> _getData(){
    return [
        ListTile(
          title: Text(
            '我是一个列表1'
          ),
        ),
        ListTile(
          title: Text(
            '我是一个列表2'
          ),
        ),
        ListTile(
          title: Text(
            '我是一个列表3'
          ),
        )
      ];
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}