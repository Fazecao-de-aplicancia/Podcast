import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 80.118,
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
      padding: new EdgeInsets.all(10.0),
      constraints: BoxConstraints(minWidth: 50, maxWidth: 100),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.favorite)
            ]
          )
        ),
      ),
    );
  }
}