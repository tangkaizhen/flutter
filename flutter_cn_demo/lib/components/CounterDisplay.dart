import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;
  const CounterDisplay({Key key,this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Count:$count');
  }
}