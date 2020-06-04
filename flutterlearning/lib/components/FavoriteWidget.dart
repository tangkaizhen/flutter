import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({Key key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {

  // 注意加上_，都是表示私有的
  var _isFavorited = true;
  var _favoriteCount = 41;

  // 方法的申明是没有function的
  _toggleFavorite(){
    setState(() {
      if(_isFavorited){
        _favoriteCount -= 1;
        _isFavorited = false;
      }else{
        _favoriteCount += 1;
        _isFavorited = true;
      } 
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: IconButton(
            color: Colors.red,
            icon: _isFavorited?Icon(Icons.star):Icon(Icons.star_border),
            onPressed: _toggleFavorite
          ),
        ),
        // 当 Text 在 40 和 41 之间变化时，将文本放在 SizedBox 中并设置其宽度可防止出现明显的“跳跃”，因为这些值具有不同的宽度。
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }
}