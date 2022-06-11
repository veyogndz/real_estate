import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/screens/add_estate/photos.dart';
import '../../atomic_design/atom/lato_text.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../atomic_design/molecule/next_button.dart';
import '../../util/util_colors.dart';
import '../account_setup/maps.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String variable =
      "Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 40.h),
              RichText(
                text: TextSpan(
                  text: "Where is the ",
                  style: GoogleFonts.lato(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      color: UtilColor.greyDark),
                  children: [
                    TextSpan(
                      text: "location?",
                      style: GoogleFonts.lato(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          color: UtilColor.greyDark),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              Row(
                children: [
                  Image.asset("assets/group.png"),
                  SizedBox(width: 15.w),
                  SizedBox(
                      width: 242.w,
                      height: 40.h,
                      child: LatoText(
                          variable: variable,
                          size: 12.sp,
                          weight: FontWeight.w400,
                          colors: UtilColor.greyDark))
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 327.w,
                height: 356.h,
                child: const Maps(
                  isShould: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 110.h),
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
                    NextButton(
                        onPressed: () {
                          Get.to(const Photos());
                        },
                        buttonName: "Next"),
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
