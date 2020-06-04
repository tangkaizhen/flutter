import 'package:flutter/material.dart';

class FnList extends StatefulWidget {
  FnList({Key key}) : super(key: key);

  _FnListState createState() => _FnListState();
}

class _FnListState extends State<FnList> {

 
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        color: Colors.white,
        height: 170,
        child: Wrap(
          // Wrap可以为子控件进行水平或者垂直方向布局，且当空间用完时，Wrap会自动换行，也是常说的流式​布局
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '乘车码',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '便民缴费',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '交通出行',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '随手拍',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '城市活动',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '个人空间',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '小锡锡',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  Icon(Icons.settings, size: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '更多',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
