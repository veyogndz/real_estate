import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/molecule/next_button.dart';
import 'package:real_estate/atomic_design/molecule/user_account_text_field.dart';
import '../../atomic_design/atom/dmSans_text.dart';
import '../../atomic_design/atom/lato_text.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../atomic_design/molecule/profile_container.dart';
import '../../atomic_design/molecule/skip_button.dart';
import '../../util/util_colors.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtons(
                    onPress: () {
                      Get.back();
                    },
                    color: UtilColor.gfButton,
                    stepChild: Image.asset(
                      "assets/arrow_back.png",
                      width: 16.w,
                      height: 15.56.h,
                    ),
                  ),
                  SkipButton(onPressed: () {})
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      LatoText(
                          variable: "Fill your",
                          size: 25.r,
                          weight: FontWeight.w500,
                          colors: UtilColor.greyDark),
                      LatoText(
                          variable: " information",
                          size: 25.r,
                          weight: FontWeight.w800,
                          colors: UtilColor.paymentSelectColor),
                    ],
                  ),
                  LatoText(
                      variable: "below",
                      size: 25.r,
                      weight: FontWeight.w500,
                      colors: UtilColor.greyDark),
                  SizedBox(height: 15.h),
                  DmSansText(
                      variable:
                          "You can edit this later on your account setting.",
                      size: 12.r,
                      weight: FontWeight.w400,
                      colors: UtilColor.greyDark)
                ],
              ),
              SizedBox(height: 45.h),
              const ProfileContainer(),
              SizedBox(height: 34.h),
              UserAccountTextField(
                  nameController: nameController,
                  phoneController: phoneController),
              SizedBox(height: 35.h),
              SizedBox(
                  width: 278.w,
                  height: 63.h,
                  child: NextButton(onPressed: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
