import 'package:flutter/material.dart';

class PrivacyPolicyStmtTxt extends StatelessWidget {
  const PrivacyPolicyStmtTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: 200.h,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'By clicking Log In, you agree with our ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                // height: 2,
              ),
            ),
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                // height: 19,
              ),
            ),
            TextSpan(
              text: '.\nLearn how we process your data in our ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                // height: 19,
              ),
            ),
            TextSpan(
              text: 'Privacy\nPolicy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                // height: 19,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                // height: 19,
              ),
            ),
            TextSpan(
              text: 'Cookies Policy.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                // height: 19,
              ),
            ),
          ],
        ),
        style: TextStyle(letterSpacing: 1, wordSpacing: 2),
        textAlign: TextAlign.center,
      ),
    );
  }
}
