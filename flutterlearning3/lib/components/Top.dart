import 'package:flutter/material.dart';

class Top extends StatefulWidget {
  Top({Key key}) : super(key: key);

  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue,Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'HI 您好',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                            ),
                            ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on,color: Colors.white,size: 14),
                              SizedBox(
                                width: 5
                              ),
                              Text(
                                '无锡.晴转多云',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white
                                ),
                              ) 
                            ],
                          )  
                           
                        ],
                      ),
                      Icon(Icons.menu)
                    ],
                  ),  
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 100,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                    
                  )
                ],
              ),
        );
  }
}