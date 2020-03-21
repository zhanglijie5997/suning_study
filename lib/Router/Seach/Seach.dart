import 'package:flutter/material.dart';
class Seach extends StatefulWidget {
  Seach({Key key}) : super(key: key);

  @override
  _SeachState createState() => _SeachState();
}

class _SeachState extends State<Seach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
      ),
    );
  }
}