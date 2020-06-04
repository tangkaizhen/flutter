import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  _alertFn(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title:Text('提示信息'),
          content: Text('你确定删除吗'),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                print('取消');
                Navigator.pop(context);
              }, 
              child: Text('取消')
            ),
            FlatButton(
              onPressed: (){
                print('确定');
              }, 
              child: Text('确定')
            ),
          ],
        );
      }
    );
  }

  _simpleDialog() async{

    var re=await showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text('选择内容'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("A"),
              onPressed: (){
                print('A');
                Navigator.pop(context,'A');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("B"),
              onPressed: (){
                print('B');
                Navigator.pop(context,'B');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("C"),
              onPressed: (){
                print('C');
                Navigator.pop(context,'C');
              },
            ),
          ],
        );
      }
      );

      print(re);
  }

  _actionSheet(){
    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text('A',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onTap: (){
                  print('A');
                },
              ),
              Divider(),
              ListTile(
                title: Text('B',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onTap: (){
                  print('B');
                },
              ),
            ],
          ),
        );
      }
    );
  }
  
  _toastFn(){
      print('11');
      Fluttertoast.showToast(
          msg: "This is Center Short Toast",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('alertDialog'),
            onPressed: _alertFn
          ),
          RaisedButton(
            child: Text('simpleDialog'),
            onPressed: _simpleDialog
          ),
          RaisedButton(
            child: Text('actionSheet'),
            onPressed: _actionSheet
          ),
          RaisedButton(
            child: Text('toast'),
            onPressed: _toastFn
          ),
        ],
      ),
    );
  }
}