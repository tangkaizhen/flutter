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
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('商品1')
            ),
            ListTile(
              title: Text('商品2')
            ),
            ListTile(
              title: Text('商品3')
            )
          ],
      ),
      ),
    );
  }
}