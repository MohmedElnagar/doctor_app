import 'package:doctor_app/core/di/dependincy_injection.dart';
import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/features/home/ui/home_page.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_cubit.dart';
import 'package:doctor_app/features/login/ui/login_page.dart';
import 'package:doctor_app/features/onbording/ui/onbording.dart';
import 'package:doctor_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:doctor_app/features/signup/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBordingPage());
      case Routes.loginPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginPage(),
                ));
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpPage(),
          ),
        );

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
