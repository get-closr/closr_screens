// import 'package:closr_screens/fab/fab.dart';
import 'package:closr_screens/dashboard/main_page.dart';
import 'package:closr_screens/unicorn_dialer/unicorn.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainPage(),
      // home: Example(),
      // home: FloatingActionButtonDemo()

    );
  }
}