import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicalchat/controllers/login/login-ctrlr.dart';

import '../../profiledetails/profile-details.dart';

// ignore: must_be_immutable
class LoginBtn extends StatelessWidget {
  late LoginCtrlr login_ctrlr_pointer;
  LoginBtn({required this.login_ctrlr_pointer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (login_ctrlr_pointer.isbtntap == false) {
          Map<bool, String> isuserloggedin = await login_ctrlr_pointer.login();
          if (isuserloggedin[true] != null) {
            Future.delayed(Duration.zero, () {
              final snackBar = SnackBar(
                  content: AwesomeSnackbarContent(
                      title: "Success",
                      message: isuserloggedin[true].toString(),
                      contentType: ContentType.success));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }).whenComplete(() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => EnterProfileDetailsScreen())));
          } else {
            final snackBar = SnackBar(
                content: AwesomeSnackbarContent(
                    title: "Error",
                    message: isuserloggedin[false].toString(),
                    contentType: ContentType.failure));
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          }
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.86,
        height: 55.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Observer(builder: (_) {
          if (login_ctrlr_pointer.isbtntap == false) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 54.w,
                  // height: 22.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://img.icons8.com/?size=512&id=zQBiTJTC1Gj0&format=png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 42.w,
                ),
                Text(
                  'LOGIN WITH SPOTIFY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373737),
                    fontSize: 17.spMin,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Color(0xFFBB7AE4),
              ),
            );
          }
        }),
      ),
    );
  }
}
