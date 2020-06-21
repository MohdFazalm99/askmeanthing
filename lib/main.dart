import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ballgame(),
  ),
);

class Ballgame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Center(child: Text('Ask Me Anything 😱',
          style: TextStyle(
              fontFamily: 'Pacifico'
          ),)),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballNumber=Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}