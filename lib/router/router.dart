import 'package:chat_application/constants/strings.dart';
import 'package:chat_application/presentation/pages/contacts_screen.dart';
import 'package:chat_application/presentation/pages/home.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/login_screen.dart';

class Router {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouterConst.homeScreen:
        return MaterialPageRoute(
         builder: (context) => Home(),
        );
        break;

      case RouterConst.conactsScreen:
        return MaterialPageRoute(
           builder: (context) =>const ContactsScreen(),
        );
        break;

      case RouterConst.loginScreen:
        return MaterialPageRoute(
           builder: (context) =>const  LoginScreen(),
        );
        break;


      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }


}
