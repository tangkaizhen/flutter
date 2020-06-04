import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {

  final int count;
  // 命名参数
  const CounterDisplay({Key key,this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Count:$count');
  }

}