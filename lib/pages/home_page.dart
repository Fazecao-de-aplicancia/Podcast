import 'package:flutter/material.dart';
import 'package:podcast/commons/side_menu_screen.dart';

class AppHome extends StatefulWidget {
  AppHome({Key key}) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize (
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Home'),
          backgroundColor: Color(0xFF1261A0),
        ),
      ),
      body: Container(
        child: SideMenuScreen(),
      ),
    );
  }
}