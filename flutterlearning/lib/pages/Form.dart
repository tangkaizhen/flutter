import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title='demo'});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Text('内容主题'),
    );
  }
}