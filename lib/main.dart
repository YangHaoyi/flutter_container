import 'package:flutter/material.dart';
import 'package:flutter_container/page/AlignmentPage.dart';
import 'package:flutter_container/page/BoxDecorationPage.dart';
import 'package:flutter_container/page/MarginPage.dart';
import 'package:flutter_container/page/MatchParentPage.dart';
import 'package:flutter_container/page/MenuPage.dart';
import 'package:flutter_container/page/PaddingPage.dart';
import 'package:flutter_container/page/WarpContentPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "",
      initialRoute: '/',
      //配置路由
      routes: <String,WidgetBuilder>{
        '/': (BuildContext context) =>MenuPage(),
        '/warpContent': (BuildContext context) => new WarpContentPage(),
        '/matchParent': (BuildContext context) => new MatchParentPage(),
        '/margin': (BuildContext context) => new MarginPage(),
        '/padding': (BuildContext context) => new PaddingPage(),
        '/alignment': (BuildContext context) => new AlignmentPage(),
        '/boxDecoration': (BuildContext context) => new BoxDecorationPage(),
      },
      //配置初始化路由后无需写home
      //home: HomePage(),
    );
  }
}