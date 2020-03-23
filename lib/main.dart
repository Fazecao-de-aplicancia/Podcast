import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:podcast/pages/login_page.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Podcast',
      home: LoginPage(),
    );
  }
}