import 'package:flutter/material.dart';

import 'src/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flipper",
      theme: ThemeData(primaryColor: Colors.white),
      home: HomeScreen(),
      
    );
  }
}