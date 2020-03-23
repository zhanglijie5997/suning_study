
import 'package:flutter/material.dart';
import '../../Router/Router.dart';
class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addStatusListener((status)  {
      if(status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                                                  builder: (BuildContext context) => Router()) , (route) => route == null);
      }
    });
    _controller.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: Center(
        child: Image.asset("images/fight.jpeg", height: MediaQuery.of(context).size.height,),
      ) 
    );
  }
}