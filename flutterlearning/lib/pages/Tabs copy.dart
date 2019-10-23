import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _index=0;
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('flutter Demo'),
          ),
          body:this._pageList[this._index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._index,
            onTap: (int index){
              // 点击的回调函数,类似于小程序
              setState(() {
                  this._index=index; 
              });
            },
            iconSize: 25.0,
            // 选中的颜色
            fixedColor: Colors.red,
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