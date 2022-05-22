import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/util/util_colors.dart';

import '../atom/raleway_text.dart';

class HouseTypeRow extends StatefulWidget {
  const HouseTypeRow({Key? key}) : super(key: key);

  @override
  _HouseTypeRowState createState() => _HouseTypeRowState();
}

class _HouseTypeRowState extends State<HouseTypeRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            width: 62.w,
            height: 47.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: UtilColor.gfButton),
            child: Center(
              child: RalewayText(
                  variable: "All",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        InkWell(
          child: Container(
            width: 80.w,
            height: 47.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: UtilColor.gfButton),
            child: Center(
              child: RalewayText(
                  variable: "House",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        InkWell(
          child: Container(
              width: 101.w,
              height: 47.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: UtilColor.gfButton),
              child: Center(
                child: RalewayText(
                    variable: "Apartment",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors: UtilColor.greyDark),
              )),
        ),
        SizedBox(width:10.w),
        InkWell(
          child: Container(
            width: 80.w,
            height: 47.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: UtilColor.gfButton),
            child: Center(
              child: RalewayText(
                  variable: "House",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark),
            ),
          ),
        ),
      ],
    );
  }
}