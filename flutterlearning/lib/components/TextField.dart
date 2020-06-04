import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  // 如果需要设置某个输入框的初始值可以这么设置，如果不需要设置初始值，可以直接定义
  var _username=new TextEditingController();
  var _password;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      this._username.text='初始值';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单界面'),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(),

            SizedBox(height:20),

            TextField(
              onChanged: (value){
                setState(() {
                  this._username.text=value;
                });
              },
              decoration: InputDecoration(
                hintText: '请输入内容',
                border: OutlineInputBorder()
              ),
              controller: this._username,
            ),
            Container(
              // double.infinity类似于css中的width:100%
              width: double.infinity,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){

                  print(this._username.text);
                  print(this._password);

                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height:20),

            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height:20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder()
              ),
              onChanged: (value){
                setState(() {
                  this._password=value;
                });
              },
            )
          ],
        ),
        ),
    );
  }
}