import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/fav_button.dart';
import 'package:real_estate/atomic_design/molecule/featured_button.dart';

import '../../util/util_colors.dart';

class FeaturedEstates extends StatefulWidget {
  const FeaturedEstates({Key? key}) : super(key: key);

  @override
  _FeaturedEstatesState createState() => _FeaturedEstatesState();
}

class _FeaturedEstatesState extends State<FeaturedEstates> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 268.w,
          height: 156.h,
          decoration: BoxDecoration(
            color: UtilColor.softGrey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130.w,
                height: 140.h,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Image.asset("assets/image_27.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, top: 7.h),
                      child: FavButton(onPressed: () {}),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 18.w, top: 100.h, bottom: 7.h),
                      child: SizedBox(
                          width: 72.w,
                          height: 27.h,
                          child: const FeaturedButton()),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: 108.w,
                      height: 100.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RalewayText(
                              variable: "Sky Dandelions Apartment",
                              size: 12.r,
                              weight: FontWeight.w700,
                              colors: UtilColor.greyDark),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 12.r, ),
                              SizedBox(width: 5.w),
                              LatoText(variable: "4.9", size: 8.r, weight: FontWeight.w700 , colors: UtilColor.greyDark),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: UtilColor.greyDark,size: 12.r),
                              SizedBox(width: 5.w),
                              RalewayText(variable: "Jakarta, Indonesia", size: 8.r, weight: FontWeight.w400, colors: UtilColor.greyDark)
                            ],
                          ),
                          SizedBox(height:28.h),
                          Row(
                            children: [
                              LatoText(variable: "\$ 290", size: 16.r, weight: FontWeight.w600, colors: UtilColor.greyDark),
                              LatoText(variable: "/month", size: 8.r, weight: FontWeight.w500, colors: UtilColor.greyDark),
                            ],
                          )

                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10.h),
        Container(
          width: 268.w,
          height: 156.h,
          decoration: BoxDecoration(
            color: UtilColor.softGrey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130.w,
                height: 140.h,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Image.asset("assets/image_27.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, top: 7.h),
                      child: FavButton(onPressed: () {}),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 18.w, top: 100.h, bottom: 7.h),
                      child: SizedBox(
                          width: 72.w,
                          height: 27.h,
                          child: const FeaturedButton()),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: 108.w,
                      height: 100.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RalewayText(
                              variable: "Sky Dandelions Apartment",
                              size: 12.r,
                              weight: FontWeight.w700,
                              colors: UtilColor.greyDark),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 12.r, ),
                              SizedBox(width: 5.w),
                              LatoText(variable: "4.9", size: 8.r, weight: FontWeight.w700 , colors: UtilColor.greyDark),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: UtilColor.greyDark,size: 12.r),
                              SizedBox(width: 5.w),
                              RalewayText(variable: "Jakarta, Indonesia", size: 8.r, weight: FontWeight.w400, colors: UtilColor.greyDark)
                            ],
                          ),
                          SizedBox(height:28.h),
                          Row(
                            children: [
                              LatoText(variable: "\$ 290", size: 16.r, weight: FontWeight.w600, colors: UtilColor.greyDark),
                              LatoText(variable: "/month", size: 8.r, weight: FontWeight.w500, colors: UtilColor.greyDark),
                            ],
                          )

                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}