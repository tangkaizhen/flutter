import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DateDemo extends StatefulWidget {
  DateDemo({Key key}) : super(key: key);

  @override
  _DateDemoState createState() => _DateDemoState();
}

class _DateDemoState extends State<DateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('date'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('2019'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: (){
                  
                },
              )
            ],
          )
        ],
      )
    );
  }
}