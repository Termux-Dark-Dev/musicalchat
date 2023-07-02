import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/continue-btn.dart';
import 'components/edit-detail-sec.dart';
import 'components/profile-detail-txt.dart';

class EnterProfileDetailsScreen extends StatelessWidget {
  const EnterProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFF2F2F2F)),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ProfileDetailTxt(),
              SizedBox(
                height: 51.h,
              ),
              EditDetailSection(),
              SizedBox(
                height: 41.h,
              ),
              ContinueBtn(),
              // Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
