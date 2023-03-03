import 'package:flutter/material.dart';
import 'package:web_toff/pages/forgot_otp/view/forgot_otp_view.dart';
import 'package:web_toff/pages/info_store/view/info_store_view.dart';
import 'package:web_toff/pages/signup/view/signup_view.dart';

import '../pages/forgot_password/view/forgot_password_view.dart';
import '../pages/login/view/login_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.LOGIN:
        return PageRouteBuilder(pageBuilder: (_, __, ___) => const LoginView());
      case Routes.SIGN_UP:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => SignupView(),
        );
      case Routes.FORGOT_PASSWORD:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => ForgotPasswordView());
      case Routes.FORGOT_OTP:
        return PageRouteBuilder(pageBuilder: (_, __, ___) => ForgotOTPView());
      case Routes.INFO_STORE:
        return PageRouteBuilder(pageBuilder: (_, __, ___) => InfoStoreView());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text("error"))),
        );
    }
  }
}
