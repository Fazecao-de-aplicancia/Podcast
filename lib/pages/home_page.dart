import 'package:flutter/material.dart';
import 'package:podcast/commons/side_menu_screen.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: Text("Home"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF242E66),
                Color(0xFF313F8C),
                Color(0xFF3A4AA6)
              ]
            )
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SideMenuScreen(),
              Text('Hello there')
            ],
          ),
        ],
      ),
    );
  }
}