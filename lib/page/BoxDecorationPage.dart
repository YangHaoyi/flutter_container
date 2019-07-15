

import 'package:flutter/material.dart';
import 'package:flutter_container/widget/TitleWidget.dart';

class BoxDecorationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BoxDecorationPageState();
  }
}

class BoxDecorationPageState extends State<BoxDecorationPage>{


  Widget getContent(){
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child:
      Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF000000),width: 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.green
        ),
        child: Text(
          "圆角图形",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFF000000),
              decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
   return Column(
      children: <Widget>[
        TitleWidget("BoxDecoration"),
        Expanded(
          flex: 1,
          child: getContent(),
        )
//          getContent(),
      ],
    );
  }

}