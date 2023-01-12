import 'package:chat_application/presentation/pages/contacts_screen.dart';
import 'package:chat_application/presentation/pages/home.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/login_screen.dart';

class Router {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
         builder: (context) => Home(),
        );
        break;

      case '/second':
        return MaterialPageRoute(
           builder: (context) => contactsScreen(),
        );
        break;

      case '/third':
        return MaterialPageRoute(
           builder: (context) =>  LoginScreen(),
        );
        break;


      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }


}
