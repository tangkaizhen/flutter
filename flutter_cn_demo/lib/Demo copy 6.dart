import 'package:flutter/material.dart';

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

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
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