import 'package:flutter/material.dart';
import '../components/CounterDisplay.dart';
import '../components/CounterIncrementor.dart';
class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {

  //私有属性
  var _counter=0;

  _add(){

    setState(() {
      ++_counter;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CounterIncrementor(onPressed:_add),
        CounterDisplay(count:_counter),
      ],
    );
  }
}