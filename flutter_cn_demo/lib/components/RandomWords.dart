import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// RandomWords widget除了创建State类之外几乎没有其他任何东西：
class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  // RandomWordsState是RandomWords的状态类
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

// 泛型说明这个state类是仅服务于RandomWords类
class _RandomWordsState extends State<RandomWords> {

  final _suggestions = [];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: (context,i){
        if(i.isOdd) return Divider();

        var index=i~/2;
        if(index>=_suggestions.length){

        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // 大驼峰的写法
    return Text(wordPair.asPascalCase);
  }
}
