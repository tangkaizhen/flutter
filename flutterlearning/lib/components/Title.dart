import 'package:flutter/material.dart';
import 'FavoriteWidget.dart';

class TitleDemo extends StatefulWidget {
  TitleDemo({Key key}) : super(key: key);

  @override
  _TitleDemoState createState() => _TitleDemoState();
}

class _TitleDemoState extends State<TitleDemo> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    bottom: 8
                  ),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          FavoriteWidget()
        ],
      ),
    );
  }
}