/**
 * 
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // 加载远程图片
        child: Image.network(
          'https://himg2.huanqiucdn.cn/attachment2010/2019/1012/20191012100532130.jpg',
          // 方位
          alignment: Alignment.center,
          // cover是最常用的
          fit: BoxFit.cover
        ),
        width: 300,  
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
      ),
    );
  }
}