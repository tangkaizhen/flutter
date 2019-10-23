import 'package:flutter/material.dart';

class FnList extends StatefulWidget {
  FnList({Key key}) : super(key: key);

  _FnListState createState() => _FnListState();
}

class _FnListState extends State<FnList> {
  
  List productwidgetsFn(){
    List widgets=new List();
    for(var i=0;i<8;i++){
      widgets.add(
        Column(
          children: [
            Icon(Icons.settings),
            SizedBox(
              height: 10,
            ),
            Text('乘车码')
          ],
        )
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      color: Colors.white,
      height: 170,
      child: Wrap(
      alignment: WrapAlignment.spaceBetween,
      runAlignment:WrapAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text(
              '乘车码',
              style: TextStyle(
                fontSize: 12
              ),
              )
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('便民缴费',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('交通出行',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('随手拍',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('城市活动',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('个人空间',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('小锡锡',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
        Container(
          width: 80,
          child: Column(
          children: [
            Icon(Icons.settings,size: 20),
            SizedBox(
              height: 10,
            ),
            Text('更多',
              style: TextStyle(
                fontSize: 12
              ),)
          ],
          ),
        ),
      ],
      )
    );
  }
}