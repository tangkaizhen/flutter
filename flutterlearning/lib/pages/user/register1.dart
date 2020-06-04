import 'package:flutter/material.dart';

class Register_one extends StatefulWidget {
  Register_one({Key key}) : super(key: key);

  @override
  _Register_oneState createState() => _Register_oneState();
}

class _Register_oneState extends State<Register_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('register1')
      ),
      body:Container(
       child: RaisedButton(
         onPressed: (){
          //  替换当前页面，类似于location.href
          Navigator.pushReplacementNamed(context, '/register2');
         },
         child: Text('下一步'),
         ),
      )
    );
  }
}