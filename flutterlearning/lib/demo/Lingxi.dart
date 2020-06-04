import 'package:flutter/material.dart';

import '../components/Top.dart';
import '../components/FnList.dart';
import '../components/Ad.dart';
import '../components/MyData.dart';

class LingxiPage extends StatefulWidget {
  LingxiPage({Key key}) : super(key: key);

  @override
  _LingxiPageState createState() => _LingxiPageState();
}

// 只要调用setState方法，build就会重新加载，flutter框架的思想是来源于react
//注意一个widget主要工作是提供一个 build() 方法来描述如何根据其他较低级别的 widgets 来显示自己，
// 可以和react中的render函数作比较。

class _LingxiPageState extends State<LingxiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 这是可以伸缩的
        body: ListView(
          children: <Widget>[
            Top(),
            FnList(),
            SizedBox(
              height: 10,
            ),
            Ad(),
            SizedBox(
              height: 10
            ),
            MyData()
          ]
        ),
      );
  }
}