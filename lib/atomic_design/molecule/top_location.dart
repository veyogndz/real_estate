import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/util/util_colors.dart';

class TopLocations extends StatefulWidget {
  const TopLocations({Key? key}) : super(key: key);

  @override
  _TopLocationsState createState() => _TopLocationsState();
}

class _TopLocationsState extends State<TopLocations> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 91.w,
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Colors.grey.withOpacity(0.2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/top_loc3.png"),
              SizedBox(width: 10.w),
              RalewayText(
                  variable: "Bali",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark)
            ],
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 108.w,
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Colors.grey.withOpacity(0.2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/top_loc4.png"),
              SizedBox(width: 10.w),
              RalewayText(
                  variable: "Jakarta",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark)
            ],
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 128.w,
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Colors.grey.withOpacity(0.2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/top_loc3.png"),
              SizedBox(width: 10.w),
              RalewayText(
                  variable: "Yogyakarta",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark)
            ],
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 128.w,
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Colors.grey.withOpacity(0.2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/top_loc4.png",
              ),
              SizedBox(width:10.w),
              RalewayText(
                  variable: "Semarang",
                  size: 10.r,
                  weight: FontWeight.w500,
                  colors: UtilColor.greyDark)
            ],
          ),
        ),
      ],
    );
  }
}