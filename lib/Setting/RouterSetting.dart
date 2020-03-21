import 'package:flutter/material.dart';
import '../Router/User/User.dart';
import '../Router/Index/Index.dart';

class RouterList {
  static List routerList =  [
    { 'name': '主页', 'page': Index(), 'icon': Icon(Icons.ac_unit), 'selectIcon': Icon(Icons.ac_unit) },
    { 'name': '我的', 'page': User(), 'icon': Icon(Icons.ac_unit), 'selectIcon': Icon(Icons.ac_unit) },
  ];
}