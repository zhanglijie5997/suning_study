import 'package:flutter/material.dart';

class RushToBuy extends StatefulWidget {
  RushToBuy({Key key}) : super(key: key);

  @override
  _RushToBuyState createState() => _RushToBuyState();
}

class _RushToBuyState extends State<RushToBuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("必抢清单"),
      ),
    );
  }
}