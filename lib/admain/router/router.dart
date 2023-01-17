import 'package:chat_application/global/constants/strings.dart';
import 'package:chat_application/presentation/pages/contacts_page.dart';
import 'package:chat_application/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/subscribe_page.dart';


class RouterManager {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouterConst.loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
        break;

      case RouterConst.conactsScreen:
        return MaterialPageRoute(
          builder: (context) => ContactsScreen(),
        );
        break;

      case RouterConst.subscribeScreen:
        return MaterialPageRoute(
          builder: (context) => SubscribeScreen(),
        );
        break;

      default:
        return MaterialPageRoute(builder: (context) => LoginScreen());
    }
  }
}
