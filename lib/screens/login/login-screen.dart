import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/login/login-ctrlr.dart';
import 'components/app-logo.dart';
import 'components/login-btn.dart';
import 'components/privacy-policy-stmt.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginCtrlr login_controller_obj=LoginCtrlr();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, 1.00),
            end: Alignment(0, -1),
            colors: [Color(0xFFA020F0), Color(0xFFBB7AE4)],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogo(),
            SizedBox(height: 166.h),
            PrivacyPolicyStmtTxt(),
            SizedBox(
              height: 50.h,
            ),
            LoginBtn(login_ctrlr_pointer: login_controller_obj,)
          ],
        ),
      ),
    ));
  }
}
