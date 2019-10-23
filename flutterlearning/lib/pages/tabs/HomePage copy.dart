import 'package:flutter/material.dart';
import '../Search.dart';
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>SearchPage()
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('跳转到表单界面并且传值'),
          onPressed: (){

          },
          color: Colors.red,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}