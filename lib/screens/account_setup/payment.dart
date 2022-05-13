import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/screens/account_setup/card_container.dart';
import '../../atomic_design/atom/dmSans_text.dart';
import '../../atomic_design/atom/lato_text.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../atomic_design/molecule/skip_button.dart';
import '../../util/util_colors.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 10.h),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                children: [
                  LatoText(
                      variable: "Add your",
                      size: 25.r,
                      weight: FontWeight.w500,
                      colors: UtilColor.latoColor),
                  LatoText(
                      variable: "payment method",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.latoColor),
                  SizedBox(height: 20.h),
                  DmSansText(
                      variable:
                      "You can edit this later on your account setting.",
                      size: 12.r,
                      weight: FontWeight.w400,
                      colors: UtilColor.greyDark)
                ],
              ),
              SizedBox(height: 32.h),
              CardContainer()

            ],
          ),
       ),
     ),
    );
  }
}
