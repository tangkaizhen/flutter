
import 'package:flutter/material.dart';
import 'pages/Routes.dart';
// 国际化
import 'package:flutter_localizations/flutter_localizations.dart';

/**
 * 
 * MaterialApp Scaffold
 * 在flutter中所有的东西都要放在MaterialApp。其封装了所需要的一些Widget，一般作为顶层widget
 * Scaffold是flutter布局的基本实现
 * 
 */

main(){
  runApp(MyApp());
}

// flutter中所有的组件都是类
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      // 国际化
      localizationsDelegates: [                             
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [                                   
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
      // 刚开始需要显示的路由 
      initialRoute:'/lingxi',
      // 主要是用来命名路由传参，用来监听路由跳转
      onGenerateRoute:onGenerateRoute
    );
  }
}

