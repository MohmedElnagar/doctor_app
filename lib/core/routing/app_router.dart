import 'package:doctor_app/features/home/ui/home_page.dart';
import 'package:doctor_app/features/login/ui/login_page.dart';
import 'package:doctor_app/features/onbording/ui/onbording.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String initialRoute = '/';
  static String homepage = '/homepage';
  static String login = '/login';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: initialRoute,
      builder: (context, state) => const OnBordingPage(),
    ),
    GoRoute(
      path: homepage,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: login,
      builder: (context, state) => const LoginPage(),
    ),
  ]);
}
