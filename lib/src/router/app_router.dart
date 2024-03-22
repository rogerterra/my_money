import 'package:flutter/material.dart';
import '../modules/login/login_screen.dart';
// aqui importaremos novas telas conforme a necessidade

class AppRouter {
  static const String login = '/login';
  static const String register = '/register';
  static const String personalRegister = '/personal-register';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
