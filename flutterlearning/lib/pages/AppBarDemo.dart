import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemoPage'),
          centerTitle: true,
          backgroundColor: Colors.green,
          // 增加一个右边的按钮
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐')
            ],
          ),
        ),
        body: Text('data'),
      ),
    );
  }
}
