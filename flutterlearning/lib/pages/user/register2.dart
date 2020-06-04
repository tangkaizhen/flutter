import 'package:flutter/material.dart';
import '../Tabs.dart';

class Register_two extends StatefulWidget {
  Register_two({Key key}) : super(key: key);

  @override
  _Register_twoState createState() => _Register_twoState();
}

class _Register_twoState extends State<Register_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Register_two')
      ),
      body:Column(
        children: <Widget>[
          RaisedButton(
            child: Text('返回上一级'),
            onPressed: (){
              Navigator.of(context).pop();
            }
          ),
          RaisedButton(
            child: Text('返回返回根页面'),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context)=>Tabs(tabIndex:2)), 
                (route) => false
              );
            }
          )  
        ],
      )
    );
  }
}