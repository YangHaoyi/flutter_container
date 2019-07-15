
import 'package:flutter/material.dart';

class TitleWidget extends StatefulWidget{

  final String title;

  TitleWidget(this.title);

  @override
  State<StatefulWidget> createState() {
    return TitleWidgetState();
  }

}

class TitleWidgetState extends State<TitleWidget>{

  Widget getTitle(){
    return
      Container(
        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
        height: 50,
        color: Colors.blue,
        child:
        Stack(
          children: <Widget>[
            Align(
              alignment: FractionalOffset.center,
              child: Text(
                widget.title,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.centerLeft,
              child: Container(
                width: 50,
                height: 50,
                child:FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.all(0.0),
                  child:  new Image.asset(
                    "images/map_btn_back.png",
                    width: 30,
                    height: 30,
                  ),
                  //点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
                  highlightColor: Colors.transparent,
                  //水波纹的颜色
                  splashColor: Colors.transparent,
                  color: Colors.transparent,
                ) ,
              ),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return getTitle();
  }

}