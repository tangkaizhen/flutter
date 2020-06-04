import 'package:flutter/material.dart';
import 'TapboxB.dart';
class ParentWidget extends StatefulWidget {
  ParentWidget({Key key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      )
    );
  }
}