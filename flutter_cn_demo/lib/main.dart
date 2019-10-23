import 'package:flutter/material.dart';
import 'Demo.dart';
// 尽量在Text外层套一层Container,Row,Column是基于flexbox设计的,Stack基于想对定位和绝对定位设计的


// 箭头函数，是flutter单行函数的简写
void main()=>runApp(MyApp());

// 注意flutter中所有的都是widget
// flutter的灵感来源于react
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // 一个widget类的主要工作就是提供一个build方法来描述该widget的内容
  // build类似于react中的render方法，每次重新渲染视图时候，都会重新执行build
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Demo(),
      ),
    );
  }
}