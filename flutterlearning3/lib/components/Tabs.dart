import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
            currentIndex: this._index,
            onTap: (int index){
              // 点击的回调函数,类似于小程序
              setState(() {
                  this._index=index; 
              });
            },
            // 选中的颜色
            fixedColor: Colors.purple,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem( 
                icon: Icon(Icons.home),
                title: Text('首页',
              style: TextStyle(
                fontSize: 11
              ),)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text('办事',
              style: TextStyle(
                fontSize: 11
              ),)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('资讯',
              style: TextStyle(
                fontSize: 11
              ),)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('我的',
              style: TextStyle(
                fontSize: 11
              ),)
              ),
            ],
          );
  }
}