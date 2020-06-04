import 'package:flutter/material.dart';

import 'tabs/HomePage.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

/**
 * 
 * 路由:跳转到某个界面
 * 
 * Navigator
 * Navigator:push() 进入某个界面
 * Navigator:pop() 返回到上一个页面
 * 
 * flutter配置路由提供了两种方式：基本路由+命名路由
 * 基本路由适用于小型的项目
 * 但是在大的项目里面，需要统一管理路由，这时候可以使用命名路由
 */

class Tabs extends StatefulWidget {

  var tabIndex;
  Tabs({Key key,this.tabIndex=0}) : super(key: key);

  _TabsState createState() => _TabsState(tabIndex:this.tabIndex);
}

class _TabsState extends State<Tabs> {
  
  var tabIndex;
  _TabsState({this.tabIndex});

  var _pageList=[
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
          body:this._pageList[this.tabIndex],
          // 浮动按钮
          floatingActionButton: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(top:18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: this.tabIndex==1?Colors.red:Colors.yellow,
              onPressed: (){
                setState(() {
                  this.tabIndex=1; 
                });
              }
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this.tabIndex,
            onTap: (index){
              // 点击的回调函数
              setState(() {
                  this.tabIndex=index; 
              });
            },
            iconSize: 20.0,
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

          // 左边的抽屉组件
          drawer: Drawer(
            child:Column(
              children:<Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      // 定义抽屉的组件
                      child: DrawerHeader(
                        child: Text('你好flutter'),
                        decoration: BoxDecoration(
                          // color: Colors.red
                          image: DecorationImage(
                            image: NetworkImage('https://himg2.huanqiucdn.cn/attachment2010/2019/1012/20191012100532130.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        )
                      )
                  ],
                ),

                ListTile(
                  leading:CircleAvatar(
                    child:Icon(Icons.home)
                  ),
                  title: Text('我的空间'),
                ),

                // 分割线
                Divider(),
                
                ListTile(
                  leading:CircleAvatar(
                    child:Icon(Icons.people)
                  ),
                  title: Text('用户中心'),
                  onTap:(){
                    // 隐藏侧边栏
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/userCenter');
                  }
                ),
                Divider(),
                ListTile(
                  leading:CircleAvatar(
                    child:Icon(Icons.settings)
                  ),
                  title: Text('设置中心'),
                ),
              ]
            )
          ),
          // 右边的抽屉组件
          endDrawer: Drawer(
            child:Column(
              children:<Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: UserAccountsDrawerHeader(
                        accountName: Text('唐凯震'), 
                        accountEmail: Text('879475901@qq.com')
                        )
                      )
                  ],
                ),
              ]
            )
          ),
        );
  }
}