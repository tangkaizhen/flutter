import 'package:flutter/material.dart';

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  const CounterIncrementor({Key key,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
    
  }
}