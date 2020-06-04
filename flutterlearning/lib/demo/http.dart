import 'package:flutter/material.dart';

// 前后台交互，获取网络请求
import 'package:http/http.dart' as http;
import '../components/Post.dart';

// 转换
import 'dart:convert';

// 触发http请求,Future是表示处理异步操作的核心的类
Future<Post> fetchPost() async {

  // http.get() 方法会返回一个包含 Response 的 Future
  var response =await http.get('https://jsonplaceholder.typicode.com/posts/1');
  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // 这个由 Flutter 提供的 FutureBuilder 组件可以让处理异步数据源变的非常简单
      child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          )
    );
  }

}