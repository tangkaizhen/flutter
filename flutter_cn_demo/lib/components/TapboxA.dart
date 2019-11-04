
import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {
  
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}


class _TapboxAState extends State<TapboxA> {
  bool _active=false;
  _handleTap(){
    setState(() {
      _active=!_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active?Colors.lightGreen[700]:Colors.grey[600]
        ),
      ),
    );
  }
}