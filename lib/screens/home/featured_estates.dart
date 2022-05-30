import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/toggle_gridview.dart';
import 'package:real_estate/atomic_design/molecule/toggle_lisview.dart';
import 'package:real_estate/atomic_design/molecule/view_toggle_button.dart';
import 'package:real_estate/util/util_colors.dart';

class FeaturedEstate extends StatefulWidget {
  const FeaturedEstate({Key? key}) : super(key: key);

  @override
  State<FeaturedEstate> createState() => _FeaturedEstateState();
}

class _FeaturedEstateState extends State<FeaturedEstate> {
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: 327.w,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, top: 13.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/arrow_back.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/Setting.png"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 60.h),
                    child: Image.asset(
                      "assets/feature1.png",
                      width: 220.w,
                      height: 224.h,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/feature2.png",
                        width: 133.w,
                        height: 137.h,
                      ),
                      Image.asset(
                        "assets/feature3.png",
                        width: 133.w,
                        height: 137.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 50.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LatoText(
                                variable: "Featured Estates",
                                size: 25.r,
                                weight: FontWeight.w700,
                                colors: UtilColor.greyDark),
                            RalewayText(
                                variable:
                                    "Our recommended real estates exclusive for you.",
                                size: 12.r,
                                weight: FontWeight.w400,
                                colors: UtilColor.greyDark),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        padding: EdgeInsets.only(top: 9.5.w),
                        width: 327.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                            color: UtilColor.gfButton,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search in featured estate",
                            hintStyle: GoogleFonts.raleway(
                                fontSize: 12.r,
                                fontWeight: FontWeight.w400,
                                color: UtilColor.softGrey),
                            contentPadding: EdgeInsets.all(12.r),
                            border: InputBorder.none,
                            prefixIcon: Image.asset("assets/search.png"),
                            suffixIcon: Image.asset("assets/voice.png"),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(height: 34.h),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, right: 24.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RalewayText(
                                variable: "70 estates",
                                size: 18.sp,
                                weight: FontWeight.w500,
                                colors: UtilColor.greyDark),
                            ViewToggleButton(
                              values: [
                                Image.asset("assets/toggle_one.png"),
                                Image.asset("assets/toggle_two.png"),
                              ],
                              onToggleCallback: (value) {
                                setState(() {});
                                if (value == 0) {
                                  isGrid = true;
                                  setState(() {});
                                } else {
                                  isGrid = false;
                                  setState(() {});
                                }
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 11.h),
                      isGrid == true
                          ? Padding(
                              padding: EdgeInsets.only(left: 24.w , right: 24.w),
                              child: ToggleGridview(
                                bigPicture: Image.asset("assets/feautre5.png"),
                                price: "\$ 290",
                                time:"/month",
                                houseDetail: "Sky Dandelions Apartment",
                              ),
                            )
                          :  ToggleListview(
                        price: "\$ 290",
                        bigPicture: Image.asset("assets/feature4.png"),
                        houseContent: "Sky Dandelions Apartment",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
