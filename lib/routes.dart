import 'package:flutter/material.dart';
import 'package:gontodomobile/views/screens/authentication/login_screen.dart';
import 'package:gontodomobile/views/screens/intro_screen.dart';
import 'package:gontodomobile/views/screens/start_screen.dart';

class Routes {
  Routes._();

  static Widget? currentScreen;
  static Widget? previousScreen;

  //static variables
  static Widget intro = const IntroScreen();
  static Widget start = const StartScreen();
  static Widget login = const LoginScreen();

  static void toScreen(BuildContext context, Widget screen) {
    if (currentScreen == screen) {
      return;
    }
    previousScreen = currentScreen;
    currentScreen = screen;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static void backScreen(BuildContext context) {
    if (previousScreen == null) return;
    if (currentScreen == previousScreen) {
      return;
    }
    currentScreen = previousScreen;
    previousScreen = currentScreen;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => previousScreen!,
      ),
    );
  }
}
