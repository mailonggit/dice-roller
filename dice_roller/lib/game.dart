import 'dart:math';

import 'package:flutter/material.dart';

class MainGame extends StatefulWidget {
  @override
  _MainGameState createState() => _MainGameState();
}

class _MainGameState extends State<MainGame> {
  int number = 1;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image/dice-$number.png'),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              textColor: Colors.white,
              elevation: 1,
              color: Colors.green,
              child: Text(
                'Roll',
                style: TextStyle(fontSize: 30.0),
              ),
              colorBrightness: Brightness.dark,
              onPressed: () {
                setState(() {
                  number = 1 + random.nextInt(6);
                  debugPrint('number = $number');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
