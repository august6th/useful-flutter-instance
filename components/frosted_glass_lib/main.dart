import 'package:flutter/material.dart';
import 'frosted_gladss.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: FrostedGlassWidget(),
    );
  }
}
