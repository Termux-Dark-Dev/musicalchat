import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDetailTxt extends StatelessWidget {
  const ProfileDetailTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "Profile Details",
      style: TextStyle(
        color: Color(0xFF2F2F2F),
        fontSize: 33.spMin,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
