/**
 * 
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
    return ListView(
      children: <Widget>[
        // 实现卡片的效果
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 配置子元素的宽高比
              AspectRatio(
                aspectRatio: 20/9,
                child: Container(
                  color: Colors.red,
                )
              ),
              ListTile(
                leading: ClipOval(
                  child: Container(width: 50,height: 50,color: Colors.yellow)
                ),
                title: Text('标题'),
                subtitle: Text('副标题'),
              )
            ],
          ),
        )
      ],
    );
  }
}
