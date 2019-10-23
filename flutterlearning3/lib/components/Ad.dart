import 'package:flutter/material.dart';

class Ad extends StatefulWidget {
  Ad({Key key}) : super(key: key);

  _AdState createState() => _AdState();
}

class _AdState extends State<Ad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.all(10),
      child: Image.asset(
        'images/ad.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}