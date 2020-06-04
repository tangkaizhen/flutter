/**
 * 图片组件
 * 
 * 远程图片：Image.network
 * 本地图片：Image.asset
 * 
 * dart中显示图片最好的效果就是BoxFit.cover
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      // Container相当于div，建议将组件均放在其中，这样利于布局
      child: Container(
        child: Image.network(
          'https://pics2.baidu.com/feed/738b4710b912c8fcb10f41cfdf492043d7882180.jpeg'
        ),
        width: 300,
        height: 300,
        // 背景色
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      ),
    );
  }
}