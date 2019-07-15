import 'package:flutter/material.dart';
import 'package:flutter_container/widget/TitleWidget.dart';

class WarpContentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WarpContentPageState();
  }

}

class WarpContentPageState extends State<WarpContentPage>{

  Widget getContent(){
    return Container(
      color: Colors.white,
      child:new Center(
        child: Container(
          color: Colors.yellow,
          child:
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "宽高自适应",
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
          TitleWidget("WarpContent"),
          Expanded(
            flex: 1,
            child: getContent(),
          )
//          getContent(),
        ],
      );
  }
}
