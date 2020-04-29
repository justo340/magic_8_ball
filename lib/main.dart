import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BallPage() );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blueAccent,
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text(
              "Ask Me Anything",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),
          ),
          body: Ball( ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
             ballNumber= Random().nextInt(4)+1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
          ),
      ),
    );
  }
}
