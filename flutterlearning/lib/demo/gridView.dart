/**
 * 
 * GridView 用于创建网格布局
 * 1，GridView.count
 * 2, GridView.builder
 */
import 'package:flutter/material.dart';
import '../res/listData.dart';

class HomeContainer extends StatelessWidget {
  
  _getData(){

    var temlist=listData.map((value){
      return Container(
        // Column和ListView有点类似，但是区别主要Column不自适应宽度，按照原来自身的宽高显示
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(value['title']),
                Text(value['author'])
              ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 2
          )
        ),
      );
    });
    
    return temlist.toList();
  }

  @override
  Widget build(BuildContext context) {

    return GridView.count(
      padding: EdgeInsets.all(10),
      // 控制多少列,下面表示显示3列
      crossAxisCount: 3,
      // 左右间距
      crossAxisSpacing: 10.0,
      // 上下间距
      mainAxisSpacing: 10.0,
      children: this._getData()
    );
  }
}