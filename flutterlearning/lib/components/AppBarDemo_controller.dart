import 'package:flutter/material.dart';
// 添加监听切换tab的事件

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

// 通过with实现多继承
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  
  TabController _tabController;

  // 初始化方法.生命周期函数
  void initState() {

    // TODO: implement initState
    super.initState();

    _tabController=new TabController(
      vsync: this,
      length: 2
    );

    _tabController.addListener(() {
      print(this._tabController.index);
      // 这里面可以做些很多自定义的操作
    });

  }

  // 生命周期函数 组件销毁的时候触发
  @override 
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('TabBarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text:'热销'),
            Tab(text:'推荐'),
          ]
          ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child:Text('热销')),
          Center(child:Text('推荐')),
        ]
      ),
    );
  }
}