import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicalchat/screens/login/login-screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnimatedSplashScreen(
      backgroundColor: Color(0xFFBB7AE4),
      // disableNavigation: true,
      // nextScreen: const IsUserLoggedIn(),
      nextScreen: LoginScreen(),
      splash: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image.asset("assets/logo.png"),
        radius: 35,
      ),
      duration: 2500,
      splashTransition: SplashTransition.scaleTransition,
      curve: Curves.linear,
    ));
  }
}
