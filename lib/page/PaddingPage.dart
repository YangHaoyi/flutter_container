
import 'package:flutter/material.dart';
import 'package:flutter_container/widget/TitleWidget.dart';

class PaddingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PaddingPageState();
  }

}

class PaddingPageState extends State<PaddingPage>{


  Widget getContent(){
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child:
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
        child:
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child:
          Container(
            alignment: Alignment.center,
            color: Colors.red[200],
            width: double.infinity,
            height: double.infinity,
            child: Text(
              "内边距演示",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  decoration: TextDecoration.none
              ),
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: <Widget>[
          TitleWidget("Padding"),
          Expanded(
            flex: 1,
            child: getContent(),
          )
//          getContent(),
        ],
      );
  }
}