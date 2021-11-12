import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text('Ask me anything')),
          backgroundColor: Colors.indigo,
        ),
        body: MagicBall(),
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                answer = Random().nextInt(5) +1;
              });
            },
            child: Image.asset('images/ball$answer.png'),
          ),
        ),
      ],
      ),
    );
  }
}
