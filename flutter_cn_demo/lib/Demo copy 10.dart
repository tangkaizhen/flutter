import 'package:flutter/material.dart';
import 'components/Title.dart';
import 'components/BtnsDemo.dart';
import 'components/TapboxA.dart';
class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  Widget textSection=Container(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen of',
      softWrap:false
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            TitleDemo(),
            BtnsDemo(),
            textSection, 
            TapboxA()
          ],
        ),
      ),
    );
  }

}