import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyGame());

class MyGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      title: 'Dice Roller',
      home: Home(),
    );
  }
}
