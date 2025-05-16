import 'package:flutter/material.dart';
import 'package:gp23/RegestrationScreen/Login.dart';
import 'package:gp23/RegestrationScreen/Register.dart';
import 'package:gp23/RegestrationScreen/SplashPage.dart';
import 'Const.dart';
import 'package:gp23/UI/navscreen.dart';
import 'package:gp23/UI/HomePage.dart';

import 'package:gp23/UI/HomePage.dart';
import 'Error.dart';
class routeClass{
  static Route generator(RouteSettings setting){
    switch(setting.name) {
      case route0:
       // return buiderScreen(Splashpage());
      case route1:
        return buiderScreen(Register());
      case route2:
        return buiderScreen(Login());
      case route3:
        return buiderScreen(Homepage());
      case route4:
        return buiderScreen(nanvClass());
      // case route5:
      //   return buiderScreen(Laptopssc());
      // case route6:
      //   return buiderScreen(Monitorsc());
      // case route7:
      //   return buiderScreen(SSDsc());
      // case route8:
      //   return buiderScreen(HDDsc());
      // case route9:
      //   return buiderScreen(Acess());
      // case route10:
      //   return buiderScreen(Identity());
      // case route11:
      //   return buiderScreen(sellerPage());
      // case route12:
      //   return buiderScreen(Laptopssc());
      // case route21:
      //   return buiderScreen(MyApp());
      default :
        return MaterialPageRoute(builder: (_)=>errorPage());


    }
  }
  static MaterialPageRoute buiderScreen(Widget screen){
    return MaterialPageRoute(builder: (_)=>screen);
  }
}
