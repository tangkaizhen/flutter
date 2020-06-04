import 'package:flutter/material.dart';

class BtnsDemo extends StatefulWidget {
  BtnsDemo({Key key}) : super(key: key);

  @override
  _BtnsDemoState createState() => _BtnsDemoState();
}

class _BtnsDemoState extends State<BtnsDemo> {

  //构建按钮列
  _buildButtonColumn(color, icon,label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          // 加上Container主要是为了加上marginTop
          margin:EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('btns'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildButtonColumn(Colors.green,Icons.call,'call'),
            _buildButtonColumn(Colors.green,Icons.near_me,'near_me'),
            _buildButtonColumn(Colors.green,Icons.share,'share')
          ],
        ),
      ),
    );
  }
}