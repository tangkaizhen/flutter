import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

/**
 * json.encode() map=>json字符串
 * json.decode() json字符串=>map
 */

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('get'),
              onPressed: (){

              }
            )
          ],
        ),
      ),
    );
  }
}