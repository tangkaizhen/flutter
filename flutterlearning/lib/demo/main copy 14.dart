/**
 * 
 * flutter的设计思想来源于react
 *  动态列表：
 * 1，循环语句 
 * 2，
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

    List<Widget> list=new List();
    for(var i=0;i<20;i++){
      list.add(
        ListTile(
          title: Text(
            // 如果在字符串中需要取值，可以通过$
            '我是第$i个列表',
            style: TextStyle(
              color: Colors.red
            ),
          ),
        )
      );
    }

    return list;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}