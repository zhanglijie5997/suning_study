
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreentulilSetting {
    ScreentulilSetting._();
    static ScreentulilSetting _instance;

    static ScreentulilSetting getInstance() {
      if(_instance == null) {
        _instance = ScreentulilSetting._();
      }

      return _instance;
    }
    /// 设置宽度
    /// context 节点
    /// width 设置的宽度
    static double setWidth(BuildContext context, double width) {
       ScreenUtil.init(context, width: 750, height: 1920, allowFontScaling: false);
       return ScreenUtil().setWidth(width);
    }

    /// 设置高度
    /// context 节点
    /// width 设置的高度
    static double setHeight(BuildContext context, double height) {
       ScreenUtil.init(context, width: 750, height: 1920, allowFontScaling: false);
       return ScreenUtil().setWidth(height);
    }

    /// 设置文字大小
    /// context 节点
    /// fontSize 设置的文字大小
    static double setFontSize(BuildContext context, double fontSize) {
       ScreenUtil.init(context, width: 750, height: 1920, allowFontScaling: false);
       return ScreenUtil().setSp(fontSize);
    }
}