import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key key}) : super(key: key);

  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('跳转到商品详情'),
              onPressed: (){
                Navigator.pushNamed(context, '/productsDetails',arguments:{
                  'pid':112
                });
              }
            )
          ],
        )
      ),
    );
  }
}