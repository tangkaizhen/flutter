import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;

  // 可选的命名参数
  FormPage({this.title='demo'});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Text('内容主题'),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}