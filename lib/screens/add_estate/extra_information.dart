import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../atomic_design/atom/lato_text.dart';
import '../../util/util_colors.dart';

class ExtraInformation extends StatefulWidget {
  const ExtraInformation({Key? key}) : super(key: key);

  @override
  State<ExtraInformation> createState() => _ExtraInformationState();
}

class _ExtraInformationState extends State<ExtraInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:EdgeInsets.only(left: 24.w,right: 24.w,top: 12.h),
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
                  text: "Almost finish, ",
                  style: GoogleFonts.lato(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800,
                      color: UtilColor.greyDark),
                  children: [
                    TextSpan(
                      text: "complete ",
                      style: GoogleFonts.lato(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: UtilColor.greyDark),
                    ),
                    TextSpan(
                      text: "the listing",
                      style: GoogleFonts.lato(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: UtilColor.greyDark),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              LatoText(variable: "Sell Price", size: 18.sp, weight: FontWeight.w700, colors: UtilColor.greyDark)
            ],
          ),
        ),
      ),
    );
  }
}
