import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: MyApp()),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me anything'),
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int response = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$response.png'),
        onPressed: () {
          setState(() {
            response = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
