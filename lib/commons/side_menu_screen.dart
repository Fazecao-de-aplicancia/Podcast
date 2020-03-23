import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 50,
            color: Color(0xFF1261A0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 40),
                  child: Image.asset('assets/logo.png')
                ),
                _getMenuBtn(active: true, icon: Icons.home),
                _getMenuBtn(active: false, icon: Icons.search),
                _getMenuBtn(active: false, icon: Icons.list),
                _getMenuBtn(active: false, icon: Icons.favorite),
                _getMenuBtn(active: false, icon: Icons.account_circle),
              ],
            ),
          )
        ],
      )
    );
  }
}

_getMenuBtn({bool active, IconData icon}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border(right: BorderSide(color: active ? Colors.white : Color(0xFF1261A0), width: 5))
    ),
    child: IconButton(
      color: active ?  Colors.black : Colors.black38,
      icon: Icon(icon), 
      onPressed: () {
        active = false;
      }
    )
  );
}