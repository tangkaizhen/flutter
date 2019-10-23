import 'package:flutter/material.dart';
import 'components/Top.dart';
import 'components/FnList.dart';
import 'components/Ad.dart';
import 'components/Tabs.dart';
import 'components/MyData.dart';

// 使用了 (=>) 符号，这是 Dart 中单行函数或方法的简写
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  
// 一个Widget最重要的就是build，build()方法来描述如何根据其他较低级别的 widgets来显示自己
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcome to Flutter',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Top(),
            FnList(),
            SizedBox(
              height: 10
            ),
            Ad(),
            SizedBox(
              height: 10
            ),
            MyData()
          ]
        ),
        bottomNavigationBar: Tabs()
      ),
    );
  }
}