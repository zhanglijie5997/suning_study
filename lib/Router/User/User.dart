import 'package:flutter/material.dart';

class User extends StatefulWidget {
  User({Key key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的易购"),
      ),
      body: Container(
        child: Text('我的易购'),  
      ),
    );
  }
}