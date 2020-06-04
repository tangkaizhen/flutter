/**
 * 页面布局
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
            Positioned(
              left: 100,
              top: 100,
              child: Icon(Icons.home,size:40,color:Colors.white)
            ),
            Positioned(
              left: 50,
              child: Icon(Icons.search,size:40,color:Colors.white)
            ),
            Positioned(
              bottom: 0,
              child: Icon(Icons.send,size:40,color:Colors.white)
            )
          ],
      ),
      )
    );
  }
}
