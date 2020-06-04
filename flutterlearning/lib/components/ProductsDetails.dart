import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  var arguments;
  ProductDetailsPage({Key key,this.arguments}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState(arguments:this.arguments);
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  var arguments;

  _ProductDetailsPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('商品详情')
      ),
      body:Container(
       child: Text('id是${arguments['pid']}'),
      )
    );
    
    
  }
}