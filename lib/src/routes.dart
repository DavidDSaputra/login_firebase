import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';

class Routes {
  static const splash = '/';
  static const login  = '/login';

  static Map<String, WidgetBuilder> get map => {
    splash: (_) => const SplashScreen(),
    login : (_) => const LoginScreen(),
  };
}
