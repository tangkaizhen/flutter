/**
 * Wrap:流式布局
 */
import 'package:flutter/material.dart';

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
      hoverColor:Colors.red,
      highlightColor:Colors.red,
      color:Colors.yellow,
      textColor:Colors.red,
      onPressed: () {
        print('111');
      }
    );
  }
}
