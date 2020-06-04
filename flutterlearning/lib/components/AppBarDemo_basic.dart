import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),
        centerTitle: true,
        backgroundColor: Colors.green,
        // 增加一个导航条左边的按钮
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print('menu');
          }
        ),
        
        // 增加一个右边的按钮
        actions: <Widget>[
          // 图片图标
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          ),
        ],
      ),
      body: Text('data'),
    );
  }
}