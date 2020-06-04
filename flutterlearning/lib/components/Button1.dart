import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  Button1({Key key}) : super(key: key);

  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    /**
     * 
     */
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮组件'),
        // 这是右上角的按钮
        actions: <Widget>[
          // IconButton主要用于导航条上
          IconButton(
            icon: Icon(Icons.settings), 
            onPressed: (){
              print('11');
            }
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('floating');
          },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,  
      body: Center(
        child: Text('data'),
      ),
    );
  }
}