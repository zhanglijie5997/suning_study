import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rem {
  // 工厂模式
  factory Rem() => _getInstance();
  static Rem get instance => _getInstance();
  static Rem _instance;
  var rem;
  Rem._internal() {
    // 初始化
    
  }
  static Rem _getInstance() {
    if(_instance == null) {
      _instance = new Rem._internal();
    }
    return _instance;
  }

 
  /// 设置宽度
  /// context 
  /// width      设置宽度
  double setWidth(BuildContext context, int width) {
    ScreenUtil.init(context, width: 750, height: 1920);
    return ScreenUtil().setWidth(width);
  }

  /// 设置高度
  /// context 
  /// width      设置高度
  double setHeight(BuildContext context, int height) {
    ScreenUtil.init(context, width: 750, height: 1920);
    return ScreenUtil().setWidth(height);
  }
}