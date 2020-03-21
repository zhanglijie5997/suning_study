import 'package:flutter/material.dart';
import '../../Router/Cart/Cart.dart';
import '../../Router/Index/Index.dart';
import '../../Router/RushToBuy/RushToBuy.dart';
import '../../Router/Seach/Seach.dart';
import '../../Router/User/User.dart';

class RouterSetting {
  static List routerList = [
    { 'name': Text('首页'), 'icon': Image.asset('images/TabBar/index.png', width: 30,), 'selectIcon': Image.asset('images/TabBar/index-select.png', width: 30,), 'id':0, 'page': Index() },
    { 'name': Text('分类'), 'icon': Image.asset('images/TabBar/seach.png', width: 30,), 'selectIcon': Image.asset('images/TabBar/seach-select.png', width: 30,), 'id':1, 'page': Seach()  },
    { 'name': Text('必抢清单'), 'icon': Image.asset('images/TabBar/rush-to-buy.png', width: 30,), 'selectIcon': Image.asset('images/TabBar/rush-to-buy-select.png', width: 30,), 'id':2, 'page': RushToBuy() },
    { 'name': Text('购物车'), 'icon': Image.asset('images/TabBar/cart.png', width: 30,), 'selectIcon': Image.asset('images/TabBar/cart-select.png', width: 30,), 'id':3, 'page': Cart()  },
    { 'name': Text('我的'), 'icon': Image.asset('images/TabBar/user.png', width: 30,), 'selectIcon': Image.asset('images/TabBar/user.png', width: 30,), 'id':3, 'page': User()  },
  ];
}