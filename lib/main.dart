import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicalchat/screens/splashscreen/splash-screen.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(390, 844),
    builder: (context, child) {
      return const MaterialApp(
        title: "Musical Chat",
          debugShowCheckedModeBanner: false, home: SplashScreen());
    },
  ));
}
