import 'package:flutter/material.dart';

import '../components/Form.dart';
import '../components/AppBarDemo.dart';
import '../components/Search.dart';
import '../pages/Tabs.dart';
import '../components/Products.dart';
import '../components/ProductsDetails.dart';
import '../components/AppBarDemo_controller.dart';
import '../components/User.dart';
import '../components/Button.dart';
import '../components/BtnsDemo.dart';
import '../components/Button1.dart';
import '../components/TextField.dart';
import '../components/CheckBox.dart';
import '../components/Radio.dart';
import '../components/FormEle.dart';
import '../components/Date.dart';
import '../components/date_my.dart';
import '../components/swiper.dart';
import '../components/Dialog.dart';
import '../components/DialogSelf.dart';
import '../components/http.dart';
import '../demo/Lingxi.dart';

import 'user/login.dart';
import 'user/register1.dart';
import 'user/register2.dart';

final routes={

          '/':(context)=>Tabs(),
          '/form':(context)=>FormPage(),
          '/search':(context,{arguments})=>SearchPage(arguments:arguments),
          '/productsDetails':(context,{arguments})=>ProductDetailsPage(arguments:arguments),
          '/products':(context)=>ProductsPage(),
          '/login':(context)=>Login(),
          '/register1':(context)=>Register_one(),
          '/register2':(context)=>Register_two(),
          '/appBar':(context)=>AppBarDemoPage(),
          '/appBarController':(context)=>TabBarControllerPage(),
          '/userCenter':(context)=>UserPage(),
          '/BtnsDemo':(context)=>BtnsDemo(),
          '/button':(context)=>ButtonPage(),
          '/button1':(context)=>Button1(),
          '/textField':(context)=>TextFieldPage(),
          '/checkBox':(context)=>CheckBoxPage(),
          '/radio':(context)=>RadioPage(),
          '/formEle':(context)=>FormElePage(),
          '/date':(context)=>DatePage(),
          '/dateDemo':(context)=>DateDemo(),
          '/swiper':(context)=>SwiperPage(),
          '/dialog':(context)=>DialogPage(),
          '/dialogSelf':(context)=>DialogSelf(),
          '/http':(context)=>HttpPage(),
          '/lingxi':(context)=>LingxiPage(),

        };

// 命名路由 传值需要下面配置，主要监听命名路由的跳转
var onGenerateRoute=(RouteSettings settings){
  
    final String name=settings.name;
    final Function pageContentBuilder=routes[name];
    if(pageContentBuilder!=null){
      if(settings.arguments!=null){
        final Route route=MaterialPageRoute(
          builder: (context)=>pageContentBuilder(context,arguments:settings.arguments)
        );
        return route;
      }else{
        final Route route=MaterialPageRoute(
          builder: (context)=>pageContentBuilder(context)
        ); 
        return route;
      }
    }
  };

