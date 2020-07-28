import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/Home.dart';
// import 'temp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Orbitron',unselectedWidgetColor: Colors.white),
      
      debugShowCheckedModeBanner: false,
      title: 'todo',
      
      home: HomePage(),
    );
  }
}
