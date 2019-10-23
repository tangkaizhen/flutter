
/**
 * 在dart中实例化类的时候，可以不写new
 * 内置的组件其实就是一个类的实例
 */

import 'package:flutter/material.dart';
main(){
  runApp(myApp());
}

// 自定义组件,StatelessWidget是表示无状态的组件，组件的状态不能改。
class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 居中组件
    return Center(
      child:Text(
        '你好flutter111',
        // 表示文字从左向右
        textDirection: TextDirection.ltr
      )
    );
  }
}