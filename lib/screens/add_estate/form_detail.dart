import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/small_button.dart';
import 'package:real_estate/controller/app_controller.dart';
import 'package:real_estate/screens/add_estate/location.dart';
import 'package:real_estate/util/util_colors.dart';

import '../../atomic_design/molecule/next_button.dart';

class FormDetail extends StatefulWidget {
  const FormDetail({Key? key}) : super(key: key);

  @override
  State<FormDetail> createState() => _FormDetailState();
}

class _FormDetailState extends State<FormDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 12.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.r),
                        color: UtilColor.gfButton),
                    child: Image.asset(
                      "assets/arrow_back.png",
                      width: 23.w,
                      height: 23.h,
                    ),
                  ),
                  SizedBox(width: 65.h),
                  LatoText(
                      variable: "Add Listing",
                      size: 15.sp,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                ],
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                    text:
                        "Hi ${AppController.to.userName}, Fill detail of your ",
                    style: GoogleFonts.lato(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: UtilColor.greyDark),
                    children: [
                      TextSpan(
                        text: "real estate",
                        style: GoogleFonts.lato(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            color: UtilColor.greyDark),
                      ),
                    ]),
              ),
              SizedBox(height: 35.h),
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(15.r)),
                width: 327.w,
                height: 70.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.r),
                    border: InputBorder.none,
                    suffixIcon: Image.asset("assets/house.png"),
                  ),
                  onTap: () {},
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 35.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LatoText(
                      variable: "Listing type",
                      size: 18.r,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      SmallButton(
                        realWidth: 70.w,
                        buttonContent: "Rent",
                      ),
                      SizedBox(width: 9.h),
                      SmallButton(
                        realWidth: 65.w,
                        buttonContent: "Sell",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 36.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LatoText(
                      variable: "Property Category",
                      size: 18.sp,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                  SizedBox(height: 19.h),
                  Row(
                    children: [
                      SmallButton(realWidth: 78.w, buttonContent: "House"),
                      SizedBox(width: 10.w),
                      SmallButton(realWidth: 98.w, buttonContent: "Apartment"),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      SmallButton(realWidth: 74.w, buttonContent: "Hotel"),
                      SizedBox(width: 10.w),
                      SmallButton(realWidth: 69.w, buttonContent: "Villa"),
                      SizedBox(width: 10.w),
                      SmallButton(realWidth: 84.w, buttonContent: "Cottage"),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: BackButtons(
                        onPress: () {
                          Get.back();
                        },
                        stepChild: Image.asset(
                          "assets/back.png",
                          width: 16.w,
                          height: 15.56.h,
                        ),
                        color: Colors.white,
                      ),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Colors.transparent,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              color: UtilColor.nextColor,
                              spreadRadius: 25,
                              blurRadius: 70),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    NextButton(onPressed: () {Get.to(const Location());}, buttonName: "Next"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
