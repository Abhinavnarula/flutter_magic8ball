import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(new Appmade());
}

class Appmade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App!!!',
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text('Ask Me Anything!!'),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
        ),
        body: Ballmade(),
      ),
    );
  }
}

class Ballmade extends StatefulWidget {
  @override
  _BallmadeState createState() => _BallmadeState();
}

class _BallmadeState extends State<Ballmade> {

  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            num = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$num.png'))
    );
  }
}