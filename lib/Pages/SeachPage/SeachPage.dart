import 'package:flutter/material.dart';

class SeachPage extends StatefulWidget {
  SeachPage({Key key}) : super(key: key);

  @override
  _SeachPageState createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("123")
            ],
          ),
          Text("23")
        ],
      ),
    );
  }
}