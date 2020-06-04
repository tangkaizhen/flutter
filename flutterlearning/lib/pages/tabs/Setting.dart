import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/login');
          },
          child:Text('跳转到登录界面')
        ),
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/register1');
          },
          child:Text('跳转到注册界面')
        )
      ]
    );
  }
}