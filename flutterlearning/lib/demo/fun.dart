/**
 *  动态列表：
 * 1，循环语句 
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  
  // 通过_,可以将一个属性或者方法定义成私有
  _getData(){
    return [
        ListTile(
          title: Text(
            '我是一个列表1'
          ),
        ),
        ListTile(
          title: Text(
            '我是一个列表2'
          ),
        ),
        ListTile(
          title: Text(
            '我是一个列表3'
          ),
        )
      ];
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}