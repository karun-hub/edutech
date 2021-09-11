import 'package:edutech/Screen/NavDrawer.dart';
import 'package:flutter/material.dart';

import 'Screen/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

