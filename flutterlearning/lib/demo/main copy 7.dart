/**
 * 图片组件
 * 
 * 远程图片：Image.network
 * 本地图片：Image.asset
 * 
 * dart中显示图片最好的效果就是BoxFit.cover
 */
import 'package:flutter/material.dart';
main(){
  //runApp是flutter自定义的入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('flutter Demo'),
        ),
        body:HomeContainer(),
      )
    );
  }
}

class HomeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      // Container相当于div，建议将组件均放在其中，这样利于布局
      child: Container(
        child: Image.network(
          'https://.baidu.com/s?wd=%E4%BB%%E6%97%A5%E6%96%B0%E9%B2%9C%E4%BA%8B&tn=SE_PclogoS_8whnvm25&sa=ire_dl_gh_logo&rsv_dl=igh_logo_pcs'
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