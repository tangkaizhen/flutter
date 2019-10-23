/**
 * 
 * 命名路由：适合大的项目，对路由进行统一的管理
 * 这是一种配置路由
 * 
 */
import 'package:flutter/material.dart';
import '../routes/Routes.dart';

main() {
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //刚开始需要显示的路由 
        initialRoute:'/',
        // 主要是用来路由传参
        onGenerateRoute:onGenerateRoute
        ); 
  }
}

