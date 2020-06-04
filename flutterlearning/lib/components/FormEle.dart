import 'package:flutter/material.dart';

class FormElePage extends StatefulWidget {
  FormElePage({Key key}) : super(key: key);

  @override
  _FormElePageState createState() => _FormElePageState();
}

class _FormElePageState extends State<FormElePage> {
  var username;
  var sex=1;

  _sexChange(value){
    setState(() {
      this.sex=value;
    });
  }

  List hobby=[
    {
      "checked":true,
      "title":"吃饭"
    },
    {
      "checked":true,
      "title":"睡觉"
    },
    {
      "checked":true,
      "title":"写代码"
    },
  ];

  _hobbyFn(){

    List<Widget> hobbyArr=[];

    for(var i=0;i<this.hobby.length;i++){
      hobbyArr.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]['title']),
            Checkbox(
              value: this.hobby[i]['checked'], 
              onChanged: (value){
                setState(() {
                  this.hobby[i]['checked']=value;
                });
              }
            )
          ],
        )
      );
    }

    return hobbyArr;
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
            TextField(
              decoration: InputDecoration(
                hintText: '请输入姓名',
                border: OutlineInputBorder()
              ),
              onChanged: (value){

                setState(() {
                  this.username=value;
                });

              },
            ),
            SizedBox(height:20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1, 
                  groupValue: this.sex, 
                  onChanged: this._sexChange
                ),
                SizedBox(width:20),

                Text('女'),
                Radio(
                  value: 2, 
                  groupValue: this.sex, 
                  onChanged: this._sexChange
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: this._hobbyFn(),
            ),
            SizedBox(height:20),
            
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登录'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print(this.username);
                  print(this.sex==1?'男':'女');
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}