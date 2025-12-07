import 'package:flutter/material.dart';
import 'screens/splash_swipe.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

class Routes {

  static const splash_swipe = '/';
  static const login        = '/login';
  static const home         = '/home';

  static Map<String, WidgetBuilder> get map => {
    splash_swipe: (_) => const SplashSwipeScreen(),
    login       : (_) => const LoginScreen(),
    home        : (_) => const HomeScreen(),
  };
}
