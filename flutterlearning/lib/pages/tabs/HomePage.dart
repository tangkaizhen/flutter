import 'package:flutter/material.dart';
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
          child: Text('跳转到搜索界面'),
          onPressed: (){
            // 页面跳转
            Navigator.pushNamed(context, '/search',arguments:{
              'id':'123'
            });            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转商品界面'),
          onPressed: (){
            // 页面跳转
            Navigator.pushNamed(context, '/products');            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转AppBarDemoPage'),
          onPressed: (){
            // 页面跳转
            Navigator.pushNamed(context, '/appBar');            
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}