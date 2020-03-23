import 'package:flutter/material.dart';
import 'package:flutter_study/Utils/ScreenutilSetting/ScreenutilSetting.dart';
import '../Utils/RouterSetting/RouterSetting.dart';

class Router extends StatefulWidget {
  Router({Key key}) : super(key: key);

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  // 点击切换的索引
  int _current = 0;
  @override
  void initState() {
    super.initState();
  }

  List<BottomNavigationBarItem> _bottomNavBar() {
    List<BottomNavigationBarItem> list = [];
    for (var _ in RouterSetting.routerList) {
        list.add(
          new BottomNavigationBarItem(
            title: _['name'],
            icon: _['icon'],
            activeIcon: _['selectIcon'],
          )
        );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  RouterSetting.routerList[_current]['page'],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavBar(),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: ScreentulilSetting.setFontSize(context, 24),
        selectedItemColor: Color.fromRGBO(255, 204, 0, 1),
        currentIndex: _current,
        onTap: (int index) {
          this.setState(() {
            _current = index;
          });
        },
      ),
    );
  }
}