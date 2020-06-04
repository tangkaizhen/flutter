

import 'package:flutter/material.dart';

class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        '你好flutter111',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          color: Color.fromRGBO(255, 0, 0, .5)
        ),
      )
    );
  }
}