/**
 * flutter中所有和数字相关的都是double
 */
import 'package:flutter/material.dart';
main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        '你好flutter111',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Color.fromRGBO(255, 0, 0, .5)
        ),
      )
    );
  }
}