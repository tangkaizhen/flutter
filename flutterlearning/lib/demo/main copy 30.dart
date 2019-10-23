/**
 * Wrap:流式布局
 */
import 'package:flutter/material.dart';

main() {
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('flutter Demo'),
      ),
      body: HomeContainer(),
    ));
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 流体布局
    return Wrap(
      spacing: 10,
      children: <Widget>[
        MyButton('按钮按钮按钮'),
        MyButton('按钮'),
        MyButton('按钮按钮'),
        MyButton('按钮按钮'),
        MyButton('按钮'),
        MyButton('按钮'),
        MyButton('按钮按钮按钮按钮按钮'),
        MyButton('按钮'),
        MyButton('按钮')
      ],
    );
  }
}

class MyButton extends StatelessWidget{

  var buttonTxt;
  MyButton(this.buttonTxt);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.buttonTxt), 
      onPressed: () {
        print('111');
      }
    );
  }
}
