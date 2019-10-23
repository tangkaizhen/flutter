import 'package:flutter/material.dart';

import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Tabs.dart';
import '../pages/Products.dart';

final routes={
          '/':(context)=>Tabs(),
          '/form':(context)=>FormPage(),
          '/products':(context)=>ProductsPage(),
          '/search':(context,{arguments})=>SearchPage(arguments:arguments)
        };

var onGenerateRoute=(RouteSettings settings){
          // 统一处理
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