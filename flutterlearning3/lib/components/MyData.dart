import 'package:flutter/material.dart';

class MyData extends StatefulWidget {
  MyData({Key key}) : super(key: key);

  _MyDataState createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '我的数据',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.remove_red_eye,size:15)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.grey,
                 width: 1
               ),
               borderRadius: BorderRadius.circular(10),
               color: Colors.grey   
            ),
          )
        ],
      ),
    );
  }
}