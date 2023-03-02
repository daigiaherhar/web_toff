import 'package:flutter/material.dart';
import 'package:web_toff/pages/signup/view/signup_view.dart';

import '../pages/login/view/login_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.LOGIN:
        return PageRouteBuilder(pageBuilder:  (_, __, ___)  => const LoginView());
      case Routes.SIGN_UP:
        return PageRouteBuilder(pageBuilder:  (_, __, ___)  => SignupView(),);
      // case Routes.FORGOT_PASSWORD:
      //   return MaterialPageRoute(builder: (_) => ForgotPasswordPage());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text("error"))),
        );
    }
  }
}
