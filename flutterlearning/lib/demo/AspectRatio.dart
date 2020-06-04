/**
 * AspectRatio:设置子元素的宽高比
 */
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 实现卡片的效果
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 配置子元素的宽高比
              AspectRatio(
                aspectRatio: 20/9,
                child: Container(
                  color: Colors.red,
                )
              ),
              ListTile(
                leading: ClipOval(
                  child: Container(width: 50,height: 50,color: Colors.yellow)
                ),
                title: Text('标题'),
                subtitle: Text('副标题'),
              )
            ],
          ),
        )
      ],
    );
  }
}
