// package:这是表示系统内置的包
// 下面表示创建了一个具有 Material Design 风格的应用， Material 是一种移动端和网页端通用的视觉设计语言， Flutter 提供了丰富的 Material 风格的 widgets。
import 'package:flutter/material.dart';
// 下面表示引进第三方包english_words
import 'package:english_words/english_words.dart';
// 主函数（main）使用了 (=>) 符号，这是 Dart 中单行函数或方法的简写，也就是箭头函数，注意如果使用箭头函数，只能写一行。
void main() => runApp(MyApp());
// StatelessWidget表示无状态的组件，表示该组件内所有的状态就是不能变化，如果需要继承有状态的组件，则是StatefulWidget
class MyApp extends StatelessWidget {
  // 只要调用setState方法，build就会重新加载，flutter框架的思想是来源于react
  //注意一个widget主要工作是提供一个 build() 方法来描述如何根据其他较低级别的 widgets 来显示自己，可以和react中的render函数作比较。
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        //  Center widget 可以将其子 widget 树对齐到屏幕中心。
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}