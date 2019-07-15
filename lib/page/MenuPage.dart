
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage>{


  Widget getMenuItem(String menuText,String route){
    return Container(
      width: double.infinity,
      height: 50,
      child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: (){
            Navigator.of(context).pushNamed(
              route,
            );
          },
          child:
         Center(
           child:  Text(
             menuText,
             style: TextStyle(
                 decoration: TextDecoration.none
             ),
           ),
         )
      )
    );
  }

  Widget getCutLine(){
    return Container(
      width: double.infinity,
      height: 1,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Color(0xFFE2E2E2),
    );
  }

  Widget getBottom(){
    return Container(
      width: double.infinity,
      height: 500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: CustomScrollView(
          slivers: <Widget>[
            //AppBar，包含一个导航栏
            SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Container'),
                background: Image.asset(
                  "images/label.jpg", fit: BoxFit.cover,),
              ),
            ),
            new SliverPadding(
              padding: const EdgeInsets.all(0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate(
                  <Widget>[
                    getMenuItem("宽高自适应",'/warpContent'),
                    getCutLine(),
                    getMenuItem("宽高填充",'/matchParent'),
                    getCutLine(),
                    getMenuItem("外边距",'/margin'),
                    getCutLine(),
                    getMenuItem("内边距",'/padding'),
                    getCutLine(),
                    getMenuItem("边框",'/boxDecoration'),
                    getCutLine(),
                    getMenuItem("对齐方式",'/alignment'),
                    getCutLine(),
                    getBottom(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

}