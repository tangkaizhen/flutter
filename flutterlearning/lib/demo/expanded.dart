import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  
  @override
  Widget build(BuildContext context) {
    // 类似于flex布局
    return Column(
      children: <Widget>[
        MyAppBar(
          title:Text(
            'example title'
          )
        ),
        // 尽可能占用剩余的空间
        Expanded(
          child: Center(
            child: Text('hello world'),
          ),
        )
      ],
    );
  }
}


class MyAppBar extends StatelessWidget {
  final Widget title;
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'sdfv',
            onPressed: null,
          ),
          // 这个类似于flex中自动扩充剩余的部分
          Expanded(
            child: title
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

