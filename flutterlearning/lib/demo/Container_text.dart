/**
 * Container :类似于div
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(
          child:Text('text')
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.green,
            width: 4.0
          )
        ),
      ),
    );
  }
}