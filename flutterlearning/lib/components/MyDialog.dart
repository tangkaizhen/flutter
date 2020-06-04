
import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}