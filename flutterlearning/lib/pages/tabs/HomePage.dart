import 'package:flutter/material.dart';
// 想通过路由跳转到某个界面，首先引入该页面
import '../../components/Form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('命名路由跳转到搜索界面'),
          onPressed: (){

            // 页面跳转
            Navigator.pushNamed(context, '/search',arguments:{
              "id":123
            });   

          },
          color: Colors.red,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text('命名路由跳转form表单页面'),
          onPressed: (){
            // 命名路由，适合大型的项目，统一管理路由
            Navigator.pushNamed(context, '/form');            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text('命名路由跳转商品页面'),
          onPressed: (){
            // 命名路由，适合大型的项目，统一管理路由
            Navigator.pushNamed(context, '/products');            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text('命名路由跳转appbar页面'),
          onPressed: (){
            // 命名路由，适合大型的项目，统一管理路由
            Navigator.pushNamed(context, '/appBar');            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text('基本路由跳转form表单页面'),
          onPressed: (){

            // 页面跳转，这种适合于小型的项目
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>FormPage()
              )
            );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text('命名路由跳转tabBarController'),
          onPressed: (){

            Navigator.of(context).pushNamed('/appBarController');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}