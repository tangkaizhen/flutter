import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('login')
      ),
      body:Column(
        children:<Widget>[
          SizedBox(height:30),
          Text('登录界面'),
          // 凸起按钮
          RaisedButton(
            child: Text('登录'),
            onPressed: (){
              // 返回到上一级
              Navigator.of(context).pop();
            }
          )
        ]
      )
    );
  }
}