import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/features/home/ui/home_page.dart';
import 'package:doctor_app/features/login/ui/login_page.dart';
import 'package:doctor_app/features/onbording/ui/onbording.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBordingPage());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${setting.name}"),
                  ),
                ));
    }
  }
}
