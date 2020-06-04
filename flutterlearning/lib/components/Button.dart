import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  /**
   * 各种按钮组件
   * RaisedButton
   * FlatButton使用方法和RaisedButton一样
   * OutlineButton使用方法和RaisedButton一样
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('按钮组件')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  print('普通按钮组件');
                },
                child: Text('普通按钮组件'),
                ),
              SizedBox(width:20),
              RaisedButton(
                child: Text('有颜色的按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('有颜色的按钮');
                }
              )
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  print('阴影组件');
                },
                elevation: 10,
                child: Text('阴影组件'),
                ),
              SizedBox(width:20),

              Container(
                width: 100,
                height: 100,
                child: RaisedButton(
                  child: Text('设置宽高'),
                  onPressed: (){
                  }
                  ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              // 类似于flex
              Expanded(
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  onPressed: (){

                  }
                  )
                )
            ],
          ),

          Row(
            children: <Widget>[
              RaisedButton.icon(
                onPressed: (){}, 
                icon: Icon(Icons.search), 
                label: Text('按钮图标')
                ),
              SizedBox(width:20),  
              RaisedButton(
                onPressed: (){
                  print('按钮组件');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('圆角按钮组件'),
              ),  
            ],
          ),

          Row(
            children: <Widget>[
               Container(
                 height: 150,
                 child: RaisedButton(
                   child: Text('圆形按钮'),
                   shape: CircleBorder(
                     
                   ),
                   onPressed: (){}
                   )
                ),
            ],
          )
        ],
      ),
    );
  }
}