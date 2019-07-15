
import 'package:flutter/material.dart';
import 'package:flutter_container/widget/TitleWidget.dart';

class AlignmentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AlignmentPageState();
  }

}

class AlignmentPageState extends State<AlignmentPage>{

  Widget getContent(){
    return Container(
        alignment: Alignment.center,
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child:
        Text(
          "元素居中演示",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFF000000),
              decoration: TextDecoration.none
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: <Widget>[
          TitleWidget("Alignment"),
          Expanded(
            flex: 1,
            child: getContent(),
          )
//          getContent(),
        ],
      );
  }
}