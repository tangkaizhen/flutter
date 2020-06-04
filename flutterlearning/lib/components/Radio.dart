import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  // 男：1，女：2
  var sex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('男'),
              Radio(
                // 当value值和groupValue值相等时候，就表示选中
                value: 1, 
                groupValue: this.sex, 
                onChanged: (v){
                  setState(() {
                    this.sex=v;
                  });
                }
              ),
              SizedBox(width:20),

              Text('女'),
              Radio(
                value: 2, 
                groupValue: this.sex, 
                onChanged: (v){
                  setState(() {
                    this.sex=v;
                  });
                }
              ),
            ],
          ),

          SizedBox(height: 20),

          Text(this.sex==1?'男':'女')
        ],
      )
    );
  }
}