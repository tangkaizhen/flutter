/**
 * 
 * 路由:
 * Navigator
 * Navigator:push() 进入某个界面
 * Navigator:pop() 返回到上一个页面
 */
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
main() {
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Tabs()
        ); 
  }
}

