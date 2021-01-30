import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[00],
        elevation: 0.0,
        title: Text(
          'Hero Page 2',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 32.0, top: 16.0),
        child: Hero(
          tag: 'Hero',
          child: Image(
            image: AssetImage('assets/bunny.jpg'),
            width: 450.0,
            height: 550.0,
          ),
        ),
      ),
    );
  }
}
