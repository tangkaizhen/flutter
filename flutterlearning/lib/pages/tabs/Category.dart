import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 按钮
        RaisedButton(
          child: Text('跳转到表单界面'),
          color: Colors.red,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 跳转
            // 命名路由
            Navigator.pushNamed(context, 'form');
          },
        )
      ],
    ),
    );
  }
}