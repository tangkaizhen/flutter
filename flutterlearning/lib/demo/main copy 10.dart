/**
 * 列表组件(ListView)
 * 垂直列表。水平列表。动态列表。矩阵列表
 * 常见参数：
 * scrollDirection:Axis.
 * children:列表子元素
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
          title: Text(
            '大标题1',
            style: TextStyle(
              fontSize: 20
            )
            ),
          subtitle: Text('小标题1')
        ),
        ListTile(
          title: Text('大标题2'),
          subtitle: Text('小标题2')
        )
      ],
    );
  }
}