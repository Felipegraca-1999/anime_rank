import 'package:anime_rank/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppRouter {
  static const splash = '/splash';
  static const login = '/login';

  static MaterialWithModalsPageRoute<dynamic> generateRoute(
      RouteSettings routeSettings) {
    // ignore: unused_local_variable
    final args = routeSettings.arguments as Map<String, dynamic>?;

    late final Widget page;

    switch (routeSettings.name) {
      case '/':
      case login:
        page = const LoginPage();
        break;

      default:
        page = Container();
    }
    return MaterialWithModalsPageRoute(
      builder: (_) => page,
      settings: routeSettings,
    );
  }
}
