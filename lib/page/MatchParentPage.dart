import 'package:flutter/material.dart';
import 'package:flutter_container/widget/TitleWidget.dart';

class MatchParentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MatchParentPageState();
  }
}

class MatchParentPageState extends State<MatchParentPage>{


  Widget getContent(){
    return  Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child:new Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child:
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "宽高填充",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                    decoration: TextDecoration.none
                ),
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
          TitleWidget("MatchParent"),
          Expanded(
            flex: 1,
            child: getContent(),
          )
//          getContent(),
        ],
      );
  }
}
