import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/all_discount.dart';
import 'package:real_estate/atomic_design/molecule/featured_estates.dart';
import 'package:real_estate/atomic_design/molecule/house_type_row.dart';
import 'package:real_estate/atomic_design/molecule/texts_button.dart';
import 'package:real_estate/atomic_design/molecule/top_estate_agent.dart';
import 'package:real_estate/atomic_design/molecule/top_location.dart';
import 'package:real_estate/atomic_design/molecule/vertical_explore.dart';
import 'package:real_estate/util/util_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 162.w,
                        height: 50.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              primary: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/location.png"),
                              RalewayText(
                                  variable: "Jakarta, Indonesia",
                                  size: 10.r,
                                  weight: FontWeight.w500,
                                  colors: UtilColor.greyDark),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: UtilColor.greyDark,
                                size: 15.r,
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Image.asset("assets/notification.png"),
                            onTap: () {},
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: UtilColor.dividerColor),
                              borderRadius: BorderRadius.circular(150),
                            ),
                            child: Image.asset("assets/elips.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 35.h),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Row(
                      children: [
                        LatoText(
                            variable: "Hey,",
                            size: 25.r,
                            weight: FontWeight.w500,
                            colors: UtilColor.greyDark),
                        LatoText(
                            variable: " Jonathan!,",
                            size: 25.r,
                            weight: FontWeight.w600,
                            colors: UtilColor.greyDark),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: LatoText(
                        variable: "Let's start exploring",
                        size: 25.r,
                        weight: FontWeight.w500,
                        colors: UtilColor.greyDark),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Container(
                      padding: EdgeInsets.only(top: 9.5.w),
                      decoration: BoxDecoration(
                          color: UtilColor.gfButton,
                          borderRadius: BorderRadius.circular(10.r)),
                      width: 327.w,
                      height: 70.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search House, Apartment, etc",
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
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: SizedBox(
                      width: 353.w,
                      height: 47.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [HouseTypeRow()],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: SizedBox(
                      width: 550.w,
                      height: 180.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [AllDiscount()],
                      ),
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: SizedBox(
                      width: 546.w,
                      height: 197.h,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LatoText(
                                  variable: "Featured Estates",
                                  size: 18.r,
                                  weight: FontWeight.w700,
                                  colors: Colors.black),
                              TextsButton(
                                  variable: "view all", onPressed: () {})
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 546.w,
                              height: 156.h,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [FeaturedEstates()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Padding(
                    padding:EdgeInsets.only(left: 24.w,right: 24.w),
                    child: SizedBox(
                      width: 480.w,
                      height: 97.h,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LatoText(
                                  variable: "Top Locations",
                                  size: 18.r,
                                  weight: FontWeight.w700,
                                  colors: Colors.black),
                              TextsButton(
                                  variable: "view all", onPressed: () {})
                            ],
                          ),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                TopLocations()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Padding(
                    padding:EdgeInsets.only(left: 24.w,right: 24.w),
                    child: SizedBox(
                      width: 410.w,
                      height: 151.h,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LatoText(
                                  variable: "Top Estate Agent",
                                  size: 18.r,
                                  weight: FontWeight.w700,
                                  colors: Colors.black),
                              TextsButton(
                                  variable: "explore", onPressed: () {})
                            ],
                          ),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                TopEstateAgent()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Padding(
                    padding:  EdgeInsets.only(left:24.w,right: 24.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const VerticalExplore(),
                        SizedBox(height: 10.h),
                        const VerticalExplore(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}