import 'package:flutter/material.dart';
import '../components/TapboxA.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            TapboxA()
          ],
        ),
      ),
    );
  }

}