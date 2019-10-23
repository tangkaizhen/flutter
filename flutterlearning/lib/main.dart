/**
 * 路由：路由替换，返回到根路由
 * 返回到上一个路由：pop
 */
import 'package:flutter/material.dart';
import 'routes/Routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //去掉debug图标 
        debugShowCheckedModeBanner: false,
        initialRoute:'/superApp',
        // 主要是用来路由传参
        onGenerateRoute:onGenerateRoute
        ); 
  }
}

