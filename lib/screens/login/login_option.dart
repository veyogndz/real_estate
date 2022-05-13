import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/fake_grid.dart';
import 'package:real_estate/atomic_design/molecule/gf_button.dart';
import 'package:real_estate/atomic_design/molecule/long_text_button.dart';
import 'package:real_estate/atomic_design/molecule/usedButton.dart';
import 'package:real_estate/screens/login/login_form.dart';
import 'package:real_estate/util/util_colors.dart';
import '../register/register_form.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: UtilColor.containerColor,
        body: Column(
          children: [
            const FakeGrid(
                variable: "assets/login_one.png",
                variable2: "assets/login_two.png"),
            SizedBox(height: 4.h),
            const FakeGrid(
                variable: "assets/login_two.png",
                variable2: "assets/login_three.png"),
            SizedBox(height: 53.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Row(
                children: [
                  LatoText(
                      variable: "Ready to ",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.greyDark),
                  LatoText(
                      variable: "explore?",
                      size: 25.r,
                      weight: FontWeight.w900,
                      colors: UtilColor.latoColor)
                ],
              ),
            ),
            SizedBox(height: 52.h),
            UsedButton(
              onPressed: () {
                Get.to( LoginForm());
              },
              stepChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/email.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                  SizedBox(width: 6.w),
                  LatoText(
                      variable: "Continue with Email",
                      size: 16.h,
                      weight: FontWeight.w700,
                      colors: Colors.white)
                ],
              ),
            ),
            SizedBox(height: 52.h),
            SizedBox(
              width: 327.w,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 0.5.h,
                      color: UtilColor.dividerColor,
                    ),
                  ),
                  LatoText(
                      variable: "    OR    ",
                      size: 12.r,
                      weight: FontWeight.w600,
                      colors: Colors.grey),
                  Expanded(
                    child: Divider(
                      thickness: 0.5.h,
                      color: UtilColor.dividerColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GfButton(onPressed: () {}, variable: "assets/google.png"),
                SizedBox(width: 10.w),
                GfButton(onPressed: () {}, variable: "assets/facebook.png")
              ],
            ),
            SizedBox(height: 8.h),
            LongTextButton(
              variable: "Don’t have an account? ",
              color: UtilColor.greyDark,
              color2: UtilColor.textColor,
              variable2: "Register",
              fontSize: 12.r,
              fontWeight: FontWeight.w400,
              fontWeight2: FontWeight.w800,
              onPressed: () {
                Get.to(const RegisterForm());
              },
            )
          ],
        ),
      ),
    );
  }
}
