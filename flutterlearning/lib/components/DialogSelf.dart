import 'package:flutter/material.dart';
import './MyDialog.dart';
class DialogSelf extends StatefulWidget {
  DialogSelf({Key key}) : super(key: key);

  @override
  _DialogSelfState createState() => _DialogSelfState();
}

class _DialogSelfState extends State<DialogSelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('自定义dialog'),
          onPressed: (){
            showDialog(
              context: context,
              builder: (context){
                return MyDialog();
              }
            );
          }
        ),
      ),
    );
  }
}