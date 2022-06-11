import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/not_found.dart';
import 'package:real_estate/util/util_colors.dart';
import '../../atomic_design/molecule/view_toggle_button.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  int variable = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.sp),
                          color: UtilColor.gfButton),
                      child: Image.asset("assets/arrow_back.png"),
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  RalewayText(variable: "Search Results", size: 14.r, weight: FontWeight.w700, colors: UtilColor.greyDark),
                  GestureDetector(
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.sp),
                          color: UtilColor.gfButton),
                      child: Image.asset("assets/Setting.png"),
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 327.w,
                height: 70.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.r),
                    border: InputBorder.none,
                    suffixIcon: Image.asset("assets/search.png"),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  RalewayText(variable: "Found ", size: 18.r, weight: FontWeight.w500, colors: UtilColor.greyDark),
                  RalewayText(variable: variable.toString() , size: 22.r, weight: FontWeight.w700, colors: UtilColor.greyDark),
                  RalewayText(variable: " estates", size: 18.r, weight: FontWeight.w500, colors: UtilColor.greyDark),
                  SizedBox(width: 84.w),
                  ViewToggleButton(
                    values: [
                      Image.asset("assets/toggle_one.png"),
                      Image.asset("assets/toggle_two.png"),
                    ],
                    onToggleCallback: (value) {
                      setState(() {});
                    },
                  )
                ],
              ),

              variable == 0 ? const NotFound() : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
