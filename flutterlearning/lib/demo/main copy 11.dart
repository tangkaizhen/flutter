/**
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
    // 普通列表
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          // 在前面加个图标
          leading: Icon(Icons.settings,color: Colors.yellow,size: 40),
          title: Text('大标题1'),
          subtitle: Text('小标题1'),
          // 在后面加个图标
          trailing: Icon(Icons.home),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('大标题2'),
          subtitle: Text('小标题2')
        )
      ],
    );
  }
}