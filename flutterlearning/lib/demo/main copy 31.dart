/**
 * bottomNavigationBar
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
        home: Tabs()
        );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('flutter Demo'),
          ),
          body:Text('body'),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this.index,
            onTap: (int index){
              // 点击的回调函数
              // 如果需要进行重新渲染新的值，需要调用setState，类似于小程序
              setState(() {
                  this.index=index; 
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text('分类')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('设置')
              )
            ],
          ),
        );
  }
}