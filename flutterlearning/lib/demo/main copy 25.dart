/**
 * 页面布局
 */
import 'package:flutter/material.dart';

main() {
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('flutter Demo'),
      ),
      body: HomeContainer(),
    ));
  }
}

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
