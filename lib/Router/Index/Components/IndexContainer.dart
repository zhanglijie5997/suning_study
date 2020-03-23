import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/Utils/ScreenutilSetting/ScreenutilSetting.dart';

class IndexContainer extends StatefulWidget {
  IndexContainer({Key key}) : super(key: key);

  @override
  _IndexContainerState createState() => _IndexContainerState();
}

class _IndexContainerState extends State<IndexContainer> {
  String _hour = '00'; // 时
  String _minue = '00'; // 分
  String _second = '00'; // 秒
  int _timeNum = 3600;
  Timer _timer;
  @override
  void initState() {
    _startCountTimer();
    super.initState();
  }
  @override
  void dispose() {
    if(_timer != null) {
      _timer.cancel();
    }
    super.dispose();
  }
  void _startCountTimer() { 
    if(_timer != null) {
      setState(() {
        _timer = null;
        _timer.cancel();
      });
    }
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      
      // int minue = int.parse()
      setState(() {
        if(_timeNum <= 0) {
          _timeNum = 60;
          _timer.cancel();
        }else {
          // int hour = int.parse(_hour);
          // int minue = int.parse(_minue);
          _timeNum = _timeNum - 1;
          int hour = _timeNum ~/3600;
          int minue = _timeNum ~/60;
          int second = _timeNum - hour * 3600 - minue * 60;
          String _newHour = hour.toString(); 
          String _newMinue = minue.toString();
          String _newSecond = second.toString();
          _hour = hour == 0 ? '00' : hour < 10 ? '0$_newHour' : hour; // 设置时
          _minue = minue == 0 ? '00' : minue < 10 ? '0$_newMinue' : _newMinue;  // 设置分
          _second = second < 10 ? '0$_newSecond' : _newSecond; // 设置秒
        }
      });
    });
  }

  // 秒杀时分秒模板
  Container _module(String name) {
    return Container(
              height: ScreentulilSetting.setWidth(context, 40),
              width: ScreentulilSetting.setWidth(context, 40),
              child: Center(
                child: Text(name, style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: ScreentulilSetting.setFontSize(context, 22)
                ),textAlign: TextAlign.center,)
              ) ,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 204, 0, 1),
                borderRadius: BorderRadius.all(Radius.circular(ScreentulilSetting.setWidth(context, 10)))
              ),
            );
  }

  // 限时抢购module
  /// imgUrl      图片路径
  /// point       符号
  /// bigPrice    价钱，字号大
  /// smallPrice  价钱，字号小
  Expanded _expandedModule(String imgUrl, String point, String bigPrice, String smallPrice) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(imgUrl),
          Container(
            child: Center(
                // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
                child: Text.rich(TextSpan(
                  text: point,
                  style: TextStyle(
                    fontSize: ScreentulilSetting.setFontSize(context, 28),
                    color: Color.fromRGBO(255, 85, 0, 1),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: bigPrice,
                      style: TextStyle(
                        fontSize: ScreentulilSetting.setFontSize(context, 28),
                        color: Color.fromRGBO(255, 85, 0, 1),
                      )
                    ),
                    TextSpan(
                      text: smallPrice,
                      style: TextStyle(
                        fontSize: ScreentulilSetting.setFontSize(context, 20),
                        color: Color.fromRGBO(255, 85, 0, 1),
                      )
                    ),
                  ]
                )),
              ) 
          )
        ],
      ) 
    );
  }

  // 秒杀module
  Expanded _expandedSkill(String img, String name) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(img),
          Center(
            child: Text(name, style: TextStyle(
              fontSize: ScreentulilSetting.setFontSize(context, 20)
            )),
          )
        ],
      ) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width * 0.95,
       margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0),
       decoration: BoxDecoration(
        //  color: Colors.white
       ),
       child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: ScreentulilSetting.setHeight(context, 330),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: ScreentulilSetting.setWidth(context, 5)),
                        padding: EdgeInsets.only(top: ScreentulilSetting.setHeight(context, 20), right: ScreentulilSetting.setWidth(context, 16), bottom: 0, left: ScreentulilSetting.setWidth(context, 30)),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Text("天天低价", style: TextStyle(
                                fontSize: ScreentulilSetting.setFontSize(context, 30),
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            // 倒计时
                            Container(
                              margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 10)),
                              child: Row(
                                children: <Widget>[
                                  _module(_hour),
                                  Container(
                                    child: Text(":"),
                                    margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 5)),
                                  ),
                                  _module(_minue),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 5)),
                                    child: Text(":")
                                  ),
                                  _module(_second),
                                ],
                              )
                            )
                          ],
                        )
                      ),
                      Container(
                        // color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.95 / 2,
                        padding: EdgeInsets.only(
                          left: ScreentulilSetting.setWidth(context, 26), 
                          top: ScreentulilSetting.setWidth(context, 14)),
                        child: Text("人气好货限时抢", style: TextStyle(
                          fontSize: ScreentulilSetting.setFontSize(context, 24),
                          color: Color.fromRGBO(153, 153, 153, 1)
                        ),
                        textAlign: TextAlign.left,)
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          _expandedModule("images/Index/shopBuy1.jpg", "¥", "1", ".28"),
                          _expandedModule("images/Index/shopBuy2.jpg", "¥", "4", ".9"),
                        ],
                      )
                      // 天天低价
                    ],
                  )
                ) 
              ),
              // 秒杀产品
              Expanded(
                child: Container(
                  height: ScreentulilSetting.setHeight(context, 330),
                  color: Colors.white,
                  margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 10)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.only(top: 16, right: 16, bottom: 0, left: 16),
                        child: Text("苏宁秒杀", style: TextStyle(
                          fontSize: ScreentulilSetting.setFontSize(context, 30),
                          fontWeight: FontWeight.w700
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0, right: ScreentulilSetting.setWidth(context, 16), bottom: 0, left: ScreentulilSetting.setWidth(context, 30)),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text("品质好货天天秒", style: TextStyle(
                          fontSize: ScreentulilSetting.setFontSize(context, 24),
                          color: Color.fromRGBO(153, 153, 153, 1)
                        )),
                      ),
                      Flex(direction: Axis.horizontal,
                        children: <Widget>[
                          _expandedSkill("images/Index/skill1.jpg", "三只松鼠"),
                          _expandedSkill("images/Index/skill2.jpg", "美的"),
                        ],
                      )
                    ],
                  )
                ) 
              )
            ],
          ),
          
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              
            ],
          )
        ],
      )
    );
  }
}