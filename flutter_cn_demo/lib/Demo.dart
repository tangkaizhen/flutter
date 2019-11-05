import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.menu),
              Text('demo')
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.menu),
              Text('demo')
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.menu),
              Text('demo')
            ],
          )
        ],
      ),
    );
  }
}