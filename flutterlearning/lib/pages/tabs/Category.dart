import 'package:flutter/material.dart';
import '../../components/Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children:<Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text:'热销'),
                    Tab(text:'推荐'),
                  ]
                ),
              )
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 按钮
                RaisedButton(
                  child: Text('基本路由跳转到表单界面'),
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
                ),
                // 按钮
                RaisedButton(
                  child: Text('命名路由跳转到表单界面'),
                  color: Colors.red,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: (){
                    // 跳转
                    // 命名路由
                    Navigator.pushNamed(context, '/form');
                  },
                )
              ],
             ),
            ),
            Text('我是唐凯震')
          ]
          )
      )
      );
  }
}