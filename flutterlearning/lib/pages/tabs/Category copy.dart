import 'package:flutter/material.dart';
import '../Form.dart';
// 基本路由适用于小型的项目
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>FormPage(title:'tkz')
              )
            );
          },
        )
      ],
    ),
    );
  }
}