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
    return GestureDetector(
      // 给某一个元素增加一个点击事件
      onTap: (){
        print('我是唐凯震');
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen
        ),
        child: Center(
          child: Text('Enght'),
        ),
      ),
    );
  }
}