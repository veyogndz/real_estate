import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/texts_button.dart';
import 'package:real_estate/atomic_design/molecule/toggles_button.dart';

import '../../util/util_colors.dart';

class FaqSupport extends StatefulWidget {
  const FaqSupport({Key? key}) : super(key: key);

  @override
  State<FaqSupport> createState() => _FaqSupportState();
}

class _FaqSupportState extends State<FaqSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Get.back();
                },
                backgroundColor: UtilColor.gfButton,
                child: Image.asset(
                  "assets/arrow_back.png",
                  width: 16.w,
                  height: 15.56.h,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  LatoText(
                      variable: "FAQ ",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.textColor),
                  LatoText(
                      variable: "& ",
                      size: 25.r,
                      weight: FontWeight.w400,
                      colors: UtilColor.textColor),
                  LatoText(
                      variable: "Support",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.textColor),
                ],
              ),
              SizedBox(height: 20.h),
              RalewayText(
                  variable: "Find answer to your problem using this app.",
                  size: 12.r,
                  weight: FontWeight.w400,
                  colors: UtilColor.textColor),
              SizedBox(height: 35.h),
              Row(
                children: [
                  Image.asset("assets/world.png", width: 30.w, height: 30.h),
                  SizedBox(width: 10.h),
                  TextsButton(variable: "Visit our website", onPressed: () {})
                ],
              ),
              Divider(
                thickness: 0.5.h,
                color: UtilColor.dividerColor,
              ),
              Row(
                children: [
                  Image.asset("assets/mail_us.png", width: 30.w, height: 30.h),
                  SizedBox(width: 10.h),
                  TextsButton(variable: "Email us", onPressed: () {})
                ],
              ),
              Divider(
                thickness: 0.5.h,
                color: UtilColor.dividerColor,
              ),
              Row(
                children: [
                  Image.asset("assets/terms.png", width: 30.w, height: 30.h),
                  SizedBox(width: 10.h),
                  TextsButton(variable: "Terms of service", onPressed: () {})
                ],
              ),
              SizedBox(height: 35.h),
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 327.w,
                height: 65.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.r),
                    border: InputBorder.none,
                    hintText: "Try find “how to”",
                    prefixIcon: Image.asset("assets/search.png",
                        width: 20.w, height: 20.h),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 20.h),
              TooglesButton(
                values: const ['Buyer', 'Estate Agent'],
                onToggleCallback: (value) {
                  setState(() {});
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LatoText(
                      variable: "What is Rise Real Estate?",
                      size: 14.r,
                      weight: FontWeight.w700,
                      colors: UtilColor.textColor),
                  IconButton(
                    iconSize: 18.r,
                    icon: const Icon(Icons.add, color: UtilColor.nextColor),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LatoText(
                      variable: "Why choose buy in Rise?",
                      size: 14.r,
                      weight: FontWeight.w700,
                      colors: UtilColor.textColor),
                  IconButton(
                    iconSize: 18.r,
                    icon: const Icon(Icons.remove, color: UtilColor.nextColor),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(15.r)),
                width: 327.w,
                height: 120.h,
                padding: EdgeInsets.only(left: 10.w, top: 10.h),
                child: ReadMoreText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                  style: GoogleFonts.lato(
                      fontSize: 13.r,
                      fontWeight: FontWeight.w400,
                      height: 1.6.h),
                  trimLines: 2,
                  colorClickableText: UtilColor.softGrey,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: GoogleFonts.lato(
                      fontSize: 12.r,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      color: UtilColor.softGrey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
