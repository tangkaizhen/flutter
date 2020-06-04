import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('swiper'),
      ),
      body:  Column(
        children: <Widget>[
          Container(
            child:AspectRatio(
              aspectRatio: 9/9,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network("https://himg2.huanqiucdn.cn/attachment2010/2019/1012/20191012100532130.jpg",fit: BoxFit.fitWidth);
                },
                itemCount: 3,
                // 配置分页器
                pagination: new SwiperPagination(),
                autoplay: true,
                // 可以配置左右的箭头
                control: new SwiperControl(),
              ),  
            )
          )
        ],
      )
    );
  }
}