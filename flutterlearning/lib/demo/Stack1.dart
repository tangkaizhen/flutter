/**
 * 页面布局Stack
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home,size:40,color:Colors.white)
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search,size:40,color:Colors.white)
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.send,size:40,color:Colors.white)
            )
          ],
      ),
      )
    );
  }
}
