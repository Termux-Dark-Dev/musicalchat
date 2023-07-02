import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144.w,
      height: 143.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(
            // borderRadius: BorderRadius.circular(137),
            ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png"),
          SizedBox(
            height: 6.h,
          ),
          Text(
            'Musical Chat',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.spMin,
              fontFamily: 'Arizonia',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
