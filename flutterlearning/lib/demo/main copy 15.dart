/**
 * 
 * GridView 用于创建网格布局
 * 1，GridView.count
 * 2, GridView.builder
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
  
  List<Widget> _getData(){
    List<Widget> list=new List();

    for(var i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第$i条数据',
          style:TextStyle(
            fontSize: 20,
            color: Colors.white
          )
          )
      ));
    }

    return list;
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 控制多少列,下面表示显示3列
      crossAxisCount: 3,
      children: this._getData()
    );
  }
}