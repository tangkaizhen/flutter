/**
 * 页面布局
 * Stack层叠组件
 * Stack与Align，Stack与Positioned实现定位布局
 * 
 * 可以通过给Alignment指定参数，实现定位，注意参数的大小是（-1,1）
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // alignment: Alignment.center,
        alignment: Alignment(-.7,0),
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            '我是一个文本',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            )
            )
        ],
      ),
    );
  }
}
